// ignore_for_file: cascade_invocations

import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

class QuestionRepository {
  QuestionRepository({
    required this.questionBox,
    required this.userBox,
  });

  final databaseReference = FirebaseDatabase.instance.ref().child('questions');
  final databaseVersionReference =
      FirebaseDatabase.instance.ref().child('questions_version');
  final Box<Question> questionBox;
  final Box<User> userBox;

  Future<List<Question>> getQuestions() async {
    try {
      final version = userBox.getAt(0)!.questionsVersion;
      final versionData = await databaseVersionReference.once();
      if (version.compareTo(versionData.snapshot.value! as String) != 0) {
        final data = await databaseReference.once();
        final questionList = <Question>[];
        if (data.snapshot.value != null) {
          final rawData = data.snapshot.value! as Map<dynamic, dynamic>;
          rawData.forEach((key, value) {
            questionList.add(
              Question.fromJson(value as Map<String, dynamic>),
            );
          });
        }

        await updateQuestions(questionList);
        await userBox.putAt(
          0,
          userBox.getAt(0)!.copyWith(
                questionsVersion: versionData.snapshot.value! as String,
              ),
        );
        return questionList;
      } else {
        return questionBox.values.toList();
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateQuestion(Question question) async {
    try {
      await questionBox.put(question.id, question);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateQuestions(List<Question> questions) async {
    try {
      await questionBox.clear();
      await questionBox.addAll(questions);
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<Question> getQuestion(String id) async {
    try {
      final question = questionBox.get(id);
      if (question != null) {
        return question;
      } else {
        final data = await databaseReference.child(id).once();
        if (data.snapshot.value != null) {
          final question =
              Question.fromJson(data.snapshot.value! as Map<String, dynamic>);
          await updateQuestion(question);
          return question;
        } else {
          throw Exception('Question not found');
        }
      }
    } catch (e) {
      throw Exception(e);
    }
  }
}
