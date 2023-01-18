import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

class Boxes {
  Boxes({
    required this.questionBox,
    required this.userBox,
  });
  final Box<Question> questionBox;
  final Box<User> userBox;

  void close() {
    questionBox.close();
    userBox.close();
  }
}
