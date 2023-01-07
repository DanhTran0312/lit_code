import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'enums.g.dart';

@JsonEnum(valueField: 'difficulty')
@HiveType(typeId: 3)
enum Difficulty {
  @HiveField(0)
  @JsonValue('Easy')
  easy,
  @HiveField(1)
  @JsonValue('Medium')
  medium,
  @HiveField(2)
  @JsonValue('Hard')
  hard,
}

@JsonEnum(valueField: 'category')
@HiveType(typeId: 4)
enum Category {
  @HiveField(0)
  @JsonValue('Arrays & Hashing')
  arrayAndHashing,
  @HiveField(1)
  @JsonValue('Two Pointers')
  twoPointers,
  @HiveField(2)
  @JsonValue('Sliding Window')
  slidingWindow,
  @HiveField(3)
  @JsonValue('Stack')
  stack,
  @HiveField(4)
  @JsonValue('Binary Search')
  binarySearch,
  @HiveField(5)
  @JsonValue('Trees')
  trees,
  @HiveField(6)
  @JsonValue('Tries')
  tries,
  @HiveField(7)
  @JsonValue('Linked List')
  linkedList,
  @HiveField(8)
  @JsonValue('Heap & Priority Queue')
  heapAndPriorityQueue,
  @HiveField(9)
  @JsonValue('Backtracking')
  backtracking,
  @HiveField(10)
  @JsonValue('Graphs')
  graphs,
  @HiveField(11)
  @JsonValue('Advanced Graphs')
  advancedGraphs,
  @HiveField(12)
  @JsonValue('Dynamic Programming')
  dynamicProgramming,
  @HiveField(13)
  @JsonValue('Advanced Dynamic Programming')
  advancedDynamicProgramming,
  @HiveField(14)
  @JsonValue('Greedy')
  greedy,
  @HiveField(15)
  @JsonValue('Intervals')
  intervals,
  @HiveField(16)
  @JsonValue('Bit Manipulation')
  bitManipulation,
  @HiveField(17)
  @JsonValue('Math & Geometry')
  mathAndGeometry,
}
