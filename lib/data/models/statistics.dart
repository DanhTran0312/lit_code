import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';

part 'statistics.freezed.dart';

@freezed
abstract class Statistics with _$Statistics {
  const factory Statistics({
    required List<Question> completedQuestions,
    required List<Question> totalQuestions,
  }) = _Statistics;
  const Statistics._();

  int get completedQuestionsCount => completedQuestions.length;

  int get totalQuestionsCount => totalQuestions.length;

  int get remainingQuestionsCount =>
      totalQuestionsCount - completedQuestionsCount;

  double get progress => completedQuestionsCount / totalQuestionsCount;

  Map<Category, List<Question>> get completedQuestionsByCategory {
    final completedQuestionsByCategory = <Category, List<Question>>{};
    for (final question in completedQuestions) {
      if (completedQuestionsByCategory.containsKey(question.category)) {
        completedQuestionsByCategory[question.category]!.add(question);
      } else {
        completedQuestionsByCategory[question.category] = [question];
      }
    }
    return completedQuestionsByCategory;
  }

  Map<Category, int> get totalQuestionsByCategory {
    final totalQuestionsByCategory = <Category, int>{};
    for (final question in totalQuestions) {
      if (totalQuestionsByCategory.containsKey(question.category)) {
        totalQuestionsByCategory[question.category] =
            totalQuestionsByCategory[question.category]! + 1;
      } else {
        totalQuestionsByCategory[question.category] = 1;
      }
    }
    return totalQuestionsByCategory;
  }

  Map<Category, double> get percentageCompletedPerCategory {
    final percentageCompletedPerCategory = <Category, double>{};
    for (final category in Category.values) {
      if (totalQuestionsByCategory.containsKey(category)) {
        percentageCompletedPerCategory[category] =
            completedQuestionsByCategory[category]!.length /
                totalQuestionsByCategory[category]!;
      } else {
        percentageCompletedPerCategory[category] = 0.0;
      }
    }
    return percentageCompletedPerCategory;
  }
}
