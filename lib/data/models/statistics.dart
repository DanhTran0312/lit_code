import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';

part 'statistics.freezed.dart';

@freezed
abstract class Statistics with _$Statistics {
  const factory Statistics({
    List<Question>? completedQuestions,
    List<Question>? totalQuestions,
  }) = _Statistics;
  const Statistics._();

  int get completedQuestionsCount =>
      completedQuestions == null ? 0 : completedQuestions!.length;

  int get totalQuestionsCount =>
      totalQuestions == null ? 0 : totalQuestions!.length;

  int get remainingQuestionsCount =>
      totalQuestionsCount - completedQuestionsCount;

  double get progress => completedQuestionsCount / totalQuestionsCount;

  Map<Category, List<Question>> get completedQuestionsByCategory {
    final completedQuestionsByCategory = <Category, List<Question>>{};
    for (final question in completedQuestions ?? <Question>[]) {
      if (completedQuestionsByCategory.containsKey(question.category)) {
        completedQuestionsByCategory[question.category]!.add(question);
      } else {
        completedQuestionsByCategory[question.category] = [question];
      }
    }
    return completedQuestionsByCategory;
  }

  int getCompletedQuestionsCountByCategory(Category category) {
    if (completedQuestionsByCategory.containsKey(category)) {
      return completedQuestionsByCategory[category]!.length;
    } else {
      return 0;
    }
  }

  int getTotalQuestionsCountByCategory(Category category) {
    if (totalQuestionsByCategory.containsKey(category)) {
      return totalQuestionsByCategory[category]!;
    } else {
      return 0;
    }
  }

  double getAverageConfidenceByCategory(Category category) {
    if (completedQuestionsByCategory.containsKey(category)) {
      final completedQuestions = completedQuestionsByCategory[category]!;
      var totalConfidenceLevel = 0.0;
      for (final question in completedQuestions) {
        totalConfidenceLevel += question.confidence!.value;
      }
      return totalConfidenceLevel / completedQuestions.length;
    } else {
      return 0;
    }
  }

  Map<Category, int> get totalQuestionsByCategory {
    final totalQuestionsByCategory = <Category, int>{};
    for (final question in totalQuestions ?? <Question>[]) {
      if (totalQuestionsByCategory.containsKey(question.category)) {
        totalQuestionsByCategory[question.category] =
            totalQuestionsByCategory[question.category]! + 1;
      } else {
        totalQuestionsByCategory[question.category] = 1;
      }
    }
    return totalQuestionsByCategory;
  }

  Map<Difficulty, int> get totalQuestionsByDifficulty {
    final totalQuestionsByDifficulty = <Difficulty, int>{};
    for (final question in totalQuestions ?? <Question>[]) {
      if (totalQuestionsByDifficulty.containsKey(question.difficulty)) {
        totalQuestionsByDifficulty[question.difficulty] =
            totalQuestionsByDifficulty[question.difficulty]! + 1;
      } else {
        totalQuestionsByDifficulty[question.difficulty] = 1;
      }
    }
    return totalQuestionsByDifficulty;
  }

  Map<Difficulty, double> get percentageCompletedPerDifficulty {
    final percentageCompletedPerDifficulty = <Difficulty, double>{};
    for (final difficulty in Difficulty.values) {
      if (totalQuestionsByDifficulty.containsKey(difficulty)) {
        final completedCount =
            completedQuestionsByDifficulty[difficulty] == null
                ? 0
                : completedQuestionsByDifficulty[difficulty]!.length;
        final totalCount = totalQuestionsByDifficulty[difficulty] == null
            ? 1
            : totalQuestionsByDifficulty[difficulty]!;
        percentageCompletedPerDifficulty[difficulty] =
            completedCount / totalCount;
      } else {
        percentageCompletedPerDifficulty[difficulty] = 0.0;
      }
    }
    return percentageCompletedPerDifficulty;
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

  Map<Difficulty, List<Question>> get completedQuestionsByDifficulty {
    final completedQuestionsByDifficulty = <Difficulty, List<Question>>{};
    for (final question in completedQuestions ?? <Question>[]) {
      if (completedQuestionsByDifficulty.containsKey(question.difficulty)) {
        completedQuestionsByDifficulty[question.difficulty]!.add(question);
      } else {
        completedQuestionsByDifficulty[question.difficulty] = [question];
      }
    }
    return completedQuestionsByDifficulty;
  }
}
