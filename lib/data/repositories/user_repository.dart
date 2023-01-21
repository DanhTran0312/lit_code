// ignore_for_file: join_return_with_assignment, lines_longer_than_80_chars

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';

class UserRepository {
  UserRepository({
    required Box<User> userBox,
    required DatabaseReference firebaseDatabase,
    required AuthRepository authRepository,
  })  : _userBox = userBox,
        _firebaseDatabase = firebaseDatabase,
        _authRepository = authRepository {
    userStream = _authRepository.user.listen((user) {
      if (user.isNotEmpty) {
        _user = user;
      } else {
        _user = User.empty;
      }
    });
  }

  User _user = User.empty;
  final Box<User> _userBox;
  final DatabaseReference _firebaseDatabase;
  final AuthRepository _authRepository;
  late final StreamSubscription<User> userStream;

  late final usersDatabaseReference = _firebaseDatabase.child('users');

  /// Syncs the completed questions of the user with the cloud database.
  ///
  /// Checks if the last synced time of the user in the cloud database is greater
  /// than the last synced time of the user in the local database. If it is, then
  /// the completed questions of the user in the cloud database is updated to the
  /// completed questions of the user in the local database. Otherwise, the
  /// completed questions of the user in the local database is updated to the
  /// completed questions of the user in the cloud database.
  ///
  /// Throws an exception if the user does not exist.
  ///
  /// Throws an exception if the user does not have any completed questions.
  ///
  /// Throws an exception if the user's completed questions cannot be synced with
  /// the cloud database.
  ///
  /// This function is called in [UserRepository].
  Future<void> syncCompletedQuestions() async {
    try {
      if (_user.isEmpty) {
        throw Exception(
          'Cannot sync completed questions because user does not exist',
        );
      }
      if (_user.completedQuestions.isEmpty) {
        return;
      }
      final localLastSynced = _user.lastSynced ?? 0;

      // Get the questions from the local database
      final completedQuestions = _user.completedQuestions;
      // Update the cloud database
      await usersDatabaseReference
          .child(_user.id)
          .child('completed_questions')
          .set(completedQuestions.map((e) => e!.toJson()).toList());
      await usersDatabaseReference
          .child(_user.id)
          .child('last_synced')
          .set(localLastSynced);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User> getUser() async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot get user because it does not exist');
      }
      return _user;
    } catch (e) {
      throw Exception('Error while getting user');
    }
  }

  Future<Map<String, Question>> getCompletedQuestions() async {
    if (_user.isEmpty) {
      throw Exception(
        'Cannot get completed questions because user does not exist',
      );
    }
    if (_user.completedQuestions.isEmpty) {
      return <String, Question>{};
    }
    return {for (var e in _user.completedQuestions) e!.id: e};
  }

  Future<void> markQuestionAsCompleted(Question question) async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot update user because it does not exist');
      }
      if (_user.completedQuestions.any((q) => q!.id == question.id)) {
        throw Exception('Question ${question.id} has already been completed');
      }
      _user = _user.copyWith(
        completedQuestions: [
          ..._user.completedQuestions,
          question.copyWith(
            isCompleted: true,
            confidence: Confidence.medium,
            completedAt: DateTime.now().millisecondsSinceEpoch,
          )
        ],
      );
      await _userBox.put(_user.id, _user);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot update user because it does not exist');
      }
      _user = _user.copyWith(
        completedQuestions: _user.completedQuestions
            .where((element) => element?.id != question.id)
            .toList(),
      );
      await _userBox.put(_user.id, _user);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> onQuestionConfidenceChange(
    Question question,
    Confidence confidence,
  ) async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot update user because it does not exist');
      }
      _user = _user.copyWith(
        completedQuestions: _user.completedQuestions
            .map(
              (q) => q?.id == question.id
                  ? q?.copyWith(confidence: confidence)
                  : q,
            )
            .toList(),
      );
      await _userBox.put(_user.id, _user);
    } catch (e) {
      rethrow;
    }
  }

  void dispose() {
    userStream.cancel();
  }
}
