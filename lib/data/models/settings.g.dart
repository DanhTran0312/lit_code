// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      isDarkMode: json['isDarkMode'] as bool? ?? false,
      isNotificationsEnabled: json['isNotificationsEnabled'] as bool? ?? false,
      difficulties: (json['difficulties'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$DifficultyEnumMap, e))
              .toList() ??
          const [Difficulty.easy, Difficulty.medium, Difficulty.hard],
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => $enumDecode(_$CategoryEnumMap, e))
              .toList() ??
          const [
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
            Category.mathAndGeometry
          ],
      goalDate: json['goalDate'] == null
          ? null
          : DateTime.parse(json['goalDate'] as String),
      goalQuestions: json['goalQuestions'] as int?,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'isDarkMode': instance.isDarkMode,
      'isNotificationsEnabled': instance.isNotificationsEnabled,
      'difficulties':
          instance.difficulties.map((e) => _$DifficultyEnumMap[e]!).toList(),
      'categories':
          instance.categories.map((e) => _$CategoryEnumMap[e]!).toList(),
      'goalDate': instance.goalDate?.toIso8601String(),
      'goalQuestions': instance.goalQuestions,
    };

const _$DifficultyEnumMap = {
  Difficulty.easy: 'easy',
  Difficulty.medium: 'medium',
  Difficulty.hard: 'hard',
};

const _$CategoryEnumMap = {
  Category.arrayAndHashing: 'arrayAndHashing',
  Category.twoPointers: 'twoPointers',
  Category.slidingWindow: 'slidingWindow',
  Category.stackAndQueue: 'stackAndQueue',
  Category.binarySearch: 'binarySearch',
  Category.tree: 'tree',
  Category.tries: 'tries',
  Category.linkedList: 'linkedList',
  Category.heapAndPriorityQueue: 'heapAndPriorityQueue',
  Category.backtracking: 'backtracking',
  Category.graph: 'graph',
  Category.advancedGraph: 'advancedGraph',
  Category.dynamicProgramming: 'dynamicProgramming',
  Category.advancedDynamicProgramming: 'advancedDynamicProgramming',
  Category.greedy: 'greedy',
  Category.interval: 'interval',
  Category.bitManipulation: 'bitManipulation',
  Category.mathAndGeometry: 'mathAndGeometry',
};
