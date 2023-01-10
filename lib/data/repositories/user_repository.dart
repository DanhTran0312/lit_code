// ignore_for_file: join_return_with_assignment

import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

class UserRepository {
  UserRepository({
    required this.userBox,
  });

  User _user = User.empty;
  final Box<User> userBox;

  Future<User> getUser() async {
    try {
      if (userBox.isEmpty) {
        return User.empty;
      }
      _user = userBox.values.first;
      return _user;
    } catch (e) {
      throw Exception('Error while getting user');
    }
  }

  Future<List<Question?>> getCompletedQuestions() async {
    try {
      if (_user.isEmpty) {
        throw Exception(
          'Cannot get completed questions because user does not exist',
        );
      }
      return _user.completedQuestions;
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> markQuestionAsCompleted(Question question) async {
    try {
      if (_user.isEmpty) {
        throw Exception('Cannot update user because it does not exist');
      }
      _user = _user.copyWith(
        completedQuestions: [..._user.completedQuestions, question],
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
      throw Exception(e);
    }
  }

  Future<void> saveUser(User user) async {
    try {
      if (user.isEmpty) {
        throw Exception('The User does not exist');
      } else {
        _user = user;
        await userBox.put(user.id, user);
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
