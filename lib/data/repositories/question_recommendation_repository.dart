import 'dart:math';

import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

class QuestionRecommendationRepository {
  QuestionRecommendationRepository({
    required StatisticsBloc statisticsBloc,
    required UserRepository userRepository,
  })  : _statisticsBloc = statisticsBloc,
        _userRepository = userRepository;

  final StatisticsBloc _statisticsBloc;
  final UserRepository _userRepository;

  /// Returns a list of recommended questions based on the user's statistics.

  Future<List<Question>> generateRecommendedQuestion(int amount) async {
    final recommendedQuestions = <Question>[];
    final remainingQuestionsByCategoryAndDifficulty = _statisticsBloc
        .state.statistics.remainingQuestionsByCategoryAndDifficulty;
    final averageConfidenceLevelByCategory =
        _statisticsBloc.state.statistics.averageConfidenceByCategory;
    final userExperienceLevel = _userRepository.user.experienceLevel;
    final randomCategories = _getRandomCategoriesByPriority();
    var i = 0;
    while (recommendedQuestions.length < amount) {
      if (i < randomCategories.length) {
        final category = randomCategories[i];
        if (remainingQuestionsByCategoryAndDifficulty[category] != null &&
            remainingQuestionsByCategoryAndDifficulty[category]!.isNotEmpty) {
          final difficulty = _getDifficultyByConfidenceLevel(
            averageConfidenceLevelByCategory[category]!,
            userExperienceLevel!,
          );
          final questions =
              remainingQuestionsByCategoryAndDifficulty[category]![difficulty];
          if (questions != null && questions.isNotEmpty) {
            recommendedQuestions.add(questions.first);
          }
        }
        i++;
      } else {
        break;
      }
    }
    return recommendedQuestions;
  }

  List<Category> _getRandomCategoriesByPriority() {
    final random = Random(DateTime.now().millisecondsSinceEpoch);
    final result = <Category>[];
    final categoryPriorityMapKeys = categoryPriorityMap.keys.toList();
    final categoryPriorityMapValues = categoryPriorityMap.values.toList();
    while (categoryPriorityMapValues.isNotEmpty) {
      final randomValue = random.nextDouble();
      for (var i = 0; i < categoryPriorityMapKeys.length; i++) {
        if (randomValue <= categoryPriorityMapKeys[i]) {
          categoryPriorityMapValues[i].shuffle();
          result.addAll(categoryPriorityMapValues[i]);
          categoryPriorityMapValues.removeAt(i);
          categoryPriorityMapKeys.removeAt(i);
          break;
        }
      }
    }
    return result;
  }

  Difficulty _getDifficultyByConfidenceLevel(
    double confidenceLevel,
    double experienceLevel,
  ) {
    final averageConfidence = (confidenceLevel + experienceLevel) / 2;
    if (averageConfidence < 3.5) {
      return Difficulty.easy;
    } else if (averageConfidence < 4.5) {
      return [Difficulty.easy, Difficulty.medium][Random().nextInt(2)];
    } else if (averageConfidence < 7.5) {
      return Difficulty.medium;
    } else if (averageConfidence < 9) {
      return [Difficulty.medium, Difficulty.hard][Random().nextInt(2)];
    } else {
      return Difficulty.hard;
    }
  }
}
