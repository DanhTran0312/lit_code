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

  int getCompletedQuestionsCountByCategory(Category category) {
    if (completedQuestionsByCategory.containsKey(category)) {
      final length = completedQuestionsByCategory[category] == null
          ? 0
          : completedQuestionsByCategory[category]!.length;
      return length;
    } else {
      return 0;
    }
  }

  int getTotalQuestionsCountByCategory(Category category) {
    if (questionsByCategory.containsKey(category)) {
      final length = questionsByCategory[category] == null
          ? 0
          : questionsByCategory[category]!.length;
      return length;
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

  int get completedQuestionsCount =>
      completedQuestions == null ? 0 : completedQuestions!.length;

  int get totalQuestionsCount =>
      totalQuestions == null ? 0 : totalQuestions!.length;

  int get remainingQuestionsCount =>
      totalQuestionsCount - completedQuestionsCount;

  double get progress => completedQuestionsCount / totalQuestionsCount;

  Map<Category, double> get averageConfidenceByCategory {
    final averageConfidenceByCategory = <Category, double>{};
    for (final category in Category.values) {
      averageConfidenceByCategory[category] =
          getAverageConfidenceByCategory(category);
    }
    return averageConfidenceByCategory;
  }

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

  Map<Category, List<Question>> get questionsByCategory {
    final questionsByCategory = <Category, List<Question>>{};
    for (final question in totalQuestions ?? <Question>[]) {
      if (questionsByCategory.containsKey(question.category)) {
        questionsByCategory[question.category]!.add(question);
      } else {
        questionsByCategory[question.category] = [question];
      }
    }
    return questionsByCategory;
  }

  Map<Difficulty, List<Question>> get questionsByDifficulty {
    final questionsByDifficulty = <Difficulty, List<Question>>{};
    for (final question in totalQuestions ?? <Question>[]) {
      if (questionsByDifficulty.containsKey(question.difficulty)) {
        questionsByDifficulty[question.difficulty]!.add(question);
      } else {
        questionsByDifficulty[question.difficulty] = [question];
      }
    }
    return questionsByDifficulty;
  }

  Map<Difficulty, double> get percentageCompletedPerDifficulty {
    final percentageCompletedPerDifficulty = <Difficulty, double>{};
    for (final difficulty in Difficulty.values) {
      if (questionsByDifficulty.containsKey(difficulty)) {
        final completedCount =
            completedQuestionsByDifficulty[difficulty] == null
                ? 0
                : completedQuestionsByDifficulty[difficulty]!.length;
        final totalCount = questionsByDifficulty[difficulty] == null
            ? 1
            : questionsByDifficulty[difficulty]!.length;
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
      if (questionsByCategory.containsKey(category)) {
        final completedCount = completedQuestionsByCategory[category] == null
            ? 0
            : completedQuestionsByCategory[category]!.length;
        final totalCount = questionsByCategory[category] == null
            ? 1
            : questionsByCategory[category]!.length;
        percentageCompletedPerCategory[category] = completedCount / totalCount;
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

  List<Question> get remainingQuestions {
    final remainingQuestions = <Question>[];
    final completedQuestionsMap =
        completedQuestions?.fold(<String, Question>{}, (map, question) {
              map[question.id] = question;
              return map;
            }) ??
            <String, Question>{};
    for (final question in totalQuestions ?? <Question>[]) {
      if (!completedQuestionsMap.containsKey(question.id)) {
        remainingQuestions.add(question);
      }
    }
    return remainingQuestions;
  }

  Map<Category, List<Question>> get remainingQuestionsByCategory {
    final remainingQuestionsByCategory = <Category, List<Question>>{};
    for (final question in remainingQuestions) {
      if (remainingQuestionsByCategory.containsKey(question.category)) {
        remainingQuestionsByCategory[question.category]!.add(question);
      } else {
        remainingQuestionsByCategory[question.category] = [question];
      }
    }
    return remainingQuestionsByCategory;
  }

  Map<Category, Map<Difficulty, List<Question>>>
      get remainingQuestionsByCategoryAndDifficulty {
    final remainingQuestionsByCategoryAndDifficulty =
        <Category, Map<Difficulty, List<Question>>>{};
    for (final question in remainingQuestions) {
      if (remainingQuestionsByCategoryAndDifficulty
          .containsKey(question.category)) {
        if (remainingQuestionsByCategoryAndDifficulty[question.category]!
            .containsKey(question.difficulty)) {
          remainingQuestionsByCategoryAndDifficulty[question.category]![
                  question.difficulty]!
              .add(question);
        } else {
          remainingQuestionsByCategoryAndDifficulty[question.category]![
              question.difficulty] = [question];
        }
      } else {
        remainingQuestionsByCategoryAndDifficulty[question.category] = {
          question.difficulty: [question]
        };
      }
    }
    return remainingQuestionsByCategoryAndDifficulty;
  }
}
