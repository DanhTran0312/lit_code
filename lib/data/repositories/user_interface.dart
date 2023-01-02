import 'package:lit_code/data/models/models.dart';

abstract class IUserRepository {
  Future<User> getUser(String id);
  Future<void> saveUser(User user);
  Future<void> updateUser(User user);
}
