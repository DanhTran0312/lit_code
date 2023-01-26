// ignore_for_file: join_return_with_assignment, lines_longer_than_80_chars

import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/enums.dart';
import 'package:lit_code/data/models/models.dart';

class UserRepository {
  UserRepository({
    required Box<User> userBox,
    required DatabaseReference firebaseDatabase,
  })  : _userBox = userBox,
        _firebaseDatabase = firebaseDatabase {
    if (_userBox.isEmpty) {
      _userBox.put('user', User.empty);
    } else {
      _user = _userBox.values.first;
    }
  }

  late User _user;
  final Box<User> _userBox;
  final DatabaseReference _firebaseDatabase;

  late final usersDatabaseReference = _firebaseDatabase.child('users');

  User get user => _user;

  void addUser(User user) {
    _userBox.put(user.id, user);
    _user = user;
    assert(_userBox.get(user.id) == _user, 'User was not added to box');
  }

  Future<void> signOut() async {
    await _userBox.clear();
    _user = User.empty;
  }

  Future<Map<String, Question>> getCompletedQuestions() async {
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
      assert(
        _user.completedQuestions.any((q) => q!.id == question.id),
        'Question was not added to user',
      );
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
      assert(
        !_user.completedQuestions.any((q) => q!.id == question.id),
        'Question was not removed from user',
      );
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
      if (_user.completedQuestions.any((q) => q!.id == question.id)) {
        _user = _user.copyWith(
          completedQuestions: _user.completedQuestions
              .map(
                (q) => q?.id == question.id
                    ? q?.copyWith(confidence: confidence, isCompleted: true)
                    : q,
              )
              .toList(),
        );
      } else {
        _user = _user.copyWith(
          completedQuestions: [
            ..._user.completedQuestions,
            question.copyWith(
              isCompleted: true,
              confidence: confidence,
              completedAt: DateTime.now().millisecondsSinceEpoch,
            )
          ],
        );
      }
      await _userBox.put(_user.id, _user);
      assert(
        _user.completedQuestions.any((q) => q!.id == question.id),
        'Question was not added to user',
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<Settings> getUserSettings() async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot get user settings because user does not exist');
      }
      return _user.settings ?? const Settings();
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateUserSettings(Settings settings) async {
    try {
      if (_user.isEmpty) {
        throw Exception(
          'Cannot update user settings because user does not exist',
        );
      }
      _user = _user.copyWith(settings: settings);
      await _userBox.put(_user.id, _user);
    } catch (e) {
      throw Exception(e);
    }
  }
}
