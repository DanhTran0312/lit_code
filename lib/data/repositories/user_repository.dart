// ignore_for_file: join_return_with_assignment

import 'package:hive/hive.dart';
import 'package:lit_code/data/models/user.dart';

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
