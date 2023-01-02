import 'package:lit_code/data/models/user.dart';
import 'package:lit_code/data/repositories/user_interface.dart';

class UserRepository implements IUserRepository {
  User? _user;

  @override
  Future<User> getUser(String id) async {
    try {
      if (_user != null) {
        return _user!;
      } else {
        return User.empty;
      }
    } catch (e) {
      throw Exception('Error while fetching user');
    }
  }

  @override
  Future<void> saveUser(User user) async {
    try {
      _user = user;
    } catch (e) {
      throw Exception('Error while saving user');
    }
  }

  @override
  Future<void> updateUser(User user) async {
    try {
      _user = user;
    } catch (e) {
      throw Exception('Error while updating user');
    }
  }
}
