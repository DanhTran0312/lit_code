import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/constants/enums.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(false)
        bool isDarkMode,
    @Default(false)
        bool isNotificationsEnabled,
    @Default([
      Difficulty.easy,
      Difficulty.medium,
      Difficulty.hard,
    ])
        List<Difficulty> difficulties,
    @Default([
      Category.arrayAndHashing,
      Category.twoPointers,
      Category.slidingWindow,
      Category.stackAndQueue,
      Category.binarySearch,
      Category.tree,
      Category.tries,
      Category.linkedList,
      Category.heapAndPriorityQueue,
      Category.backtracking,
      Category.graph,
      Category.advancedGraph,
      Category.dynamicProgramming,
      Category.advancedDynamicProgramming,
      Category.greedy,
      Category.interval,
      Category.bitManipulation,
      Category.mathAndGeometry,
    ])
        List<Category> categories,
    DateTime? goalDate,
    int? goalQuestions,
  }) = _Settings;

  const Settings._();

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
