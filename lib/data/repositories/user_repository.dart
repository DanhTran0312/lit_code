// ignore_for_file: join_return_with_assignment

import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

class UserRepository {
  UserRepository({
    required this.userBox,
    required this.firebaseDatabase,
  });

  User _user = User.empty;
  bool isSynced = false;
  final Box<User> userBox;
  final DatabaseReference firebaseDatabase;

  late final usersDatabaseReference = firebaseDatabase.child('users');

  void setIsSynced(bool value) {
    isSynced = value;
  }

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
      final cloudLastSynced = await usersDatabaseReference
              .child(_user.id)
              .child('last_synced')
              .once()
              .then((value) => value.snapshot.value as int?) ??
          0;
      final localLastSynced = _user.lastSynced ?? 0;

      if (cloudLastSynced > localLastSynced) {
        // Get the questions from the cloud
        final data = await usersDatabaseReference
            .child(_user.id)
            .child('completed_questions')
            .once();
        final completedQuestions = <Question>[];
        if (data.snapshot.value != null) {
          final rawData = data.snapshot.value! as List<dynamic>;
          for (final question in rawData) {
            final q =
                Map<String, dynamic>.from(question as Map<Object?, Object?>);
            completedQuestions.add(Question.fromJson(q));
          }
        }
        // Update the local database
        _user = _user.copyWith(
          completedQuestions: completedQuestions,
          lastSynced: cloudLastSynced,
        );
        await userBox.put(_user.id, _user);
      } else {
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
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<User> getUser() async {
    try {
      if (isSynced) {
      } else {
        if (userBox.isEmpty) {
          return User.empty;
        }
        _user = userBox.values.first;
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
            completedAt: DateTime.now().millisecondsSinceEpoch,
          )
        ],
      );
      await userBox.put(_user.id, _user);
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
      await userBox.put(_user.id, _user);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> saveUser(User user) async {
    try {
      if (user.isEmpty) {
        throw Exception('The User does not exist');
      } else {
        _user = user;
        await userBox.put(user.id, _user);
      }
    } catch (e) {
      throw Exception('$e');
    }
  }

  Future<void> deleteUser() async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot delete user because it does not exist');
      }
      await userBox.delete(_user.id);
      _user = User.empty;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<bool> isUserSaved(String id) async {
    try {
      return userBox.containsKey(id);
    } catch (e) {
      throw Exception('Error while checking if user is saved');
    }
  }
}
