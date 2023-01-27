// ignore_for_file: cascade_invocations

import 'package:firebase_database/firebase_database.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/data/models/models.dart';

class QuestionRepository {
  QuestionRepository({
    required this.questionBox,
    required this.userBox,
    required this.firebaseDatabase,
  });

  final Box<Question> questionBox;
  final Box<User> userBox;
  final DatabaseReference firebaseDatabase;

  late final databaseReference = firebaseDatabase.child('questions');
  late final databaseVersionReference =
      firebaseDatabase.child('questions_version');

  Future<List<Question>> getAllQuestions() async {
    try {
      // Get the version of the questions from the database
      final version = userBox.getAt(0)?.questionsVersion;
      final versionData = await databaseVersionReference.once();
      // Compare the current version with the one in the database
      if (version?.compareTo(versionData.snapshot.value! as String) != 0) {
        // If they are different, get the new questions and update the database
        final data = await databaseReference.once();
        final questionList = <Question>[];
        if (data.snapshot.value != null) {
          final rawData = data.snapshot.value! as List<dynamic>;
          for (final question in rawData) {
            final q =
                Map<String, dynamic>.from(question as Map<Object?, Object?>);
            questionList.add(Question.fromJson(q));
          }
        }

        // Fetch the questions from the database
        await updateAllQuestions(questionList);

        // Update the user's questionsVersion to the current value
        await updateQuestionsVersion(versionData.snapshot.value! as String);
        return questionList;
      } else {
        // Otherwise, get the questions from the local database
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

  Future<void> updateQuestionsVersion(String version) async {
    try {
      await userBox.put(
        'user',
        userBox.getAt(0)!.copyWith(
              questionsVersion: version,
            ),
      );
    } catch (e) {
      throw Exception(e);
    }
  }

  Future<void> updateAllQuestions(List<Question> questions) async {
    try {
      await questionBox.clear();
      for (final question in questions) {
        await questionBox.put(question.id, question);
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  // Get a question from the box by its ID
  Future<Question> getQuestion(String id) async {
    try {
      final question = questionBox.get(id);
      if (question != null) {
        return question;
      } else {
        // If the question is not in the box, get it from the database
        final data = await databaseReference.child(id).once();
        if (data.snapshot.value != null) {
          final question =
              Question.fromJson(data.snapshot.value! as Map<String, dynamic>);
          // Update the box with the question from the database
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
