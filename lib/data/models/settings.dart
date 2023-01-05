import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/enums.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@HiveType(typeId: 0)
@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(false)
    @HiveField(0)
        bool isDarkMode,
    @Default(false)
    @HiveField(1)
        bool isNotificationsEnabled,
    @Default([
      Difficulty.easy,
      Difficulty.medium,
      Difficulty.hard,
    ])
    @HiveField(2)
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
    @HiveField(3)
        List<Category> categories,
    @HiveField(4)
        DateTime? goalDate,
    @HiveField(5)
        int? goalQuestions,
  }) = _Settings;

  const Settings._();

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
