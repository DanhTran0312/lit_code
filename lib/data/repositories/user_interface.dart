import 'package:lit_code/data/models/models.dart';

abstract class IUserRepository {
  Future<User> getUser(int id);
  Future<void> saveUser(User user);
  Future<void> updateUser(User user);
  Future<void> deleteUser(int id);
}
