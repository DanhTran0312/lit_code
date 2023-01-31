import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:lit_code/constants/enums.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@HiveType(typeId: 2)
@freezed
class Settings with _$Settings {
  const factory Settings({
    @Default(ThemeMode.system)
    @HiveField(0)
        ThemeMode? themeMode,
    @Default(false)
    @HiveField(1)
        bool isNotificationsEnabled,
    @HiveField(2)
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
      Category.stack,
      Category.binarySearch,
      Category.trees,
      Category.tries,
      Category.linkedList,
      Category.heapAndPriorityQueue,
      Category.backtracking,
      Category.graphs,
      Category.advancedGraphs,
      Category.dynamicProgramming,
      Category.advancedDynamicProgramming,
      Category.greedy,
      Category.intervals,
      Category.bitManipulation,
      Category.mathAndGeometry,
    ])
    @HiveField(3)
        List<Category> categories,
    @HiveField(4)
        int? goalDate,
    @HiveField(5)
        int? goalQuestions,
  }) = _Settings;

  const Settings._();

  factory Settings.fromJson(Map<String, dynamic> json) =>
      _$SettingsFromJson(json);
}
