// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      title: json['title'] as String,
      difficulty: $enumDecode(_$DifficultyEnumMap, json['difficulty']),
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      completedAt: DateTime.parse(json['completedAt'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'difficulty': _$DifficultyEnumMap[instance.difficulty]!,
      'category': _$CategoryEnumMap[instance.category]!,
      'completedAt': instance.completedAt.toIso8601String(),
      'isCompleted': instance.isCompleted,
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
