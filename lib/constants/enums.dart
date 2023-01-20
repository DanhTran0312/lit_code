import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'enums.g.dart';

enum AppStatus {
  authenticated,
  unauthenticated,
}

enum NetworkStatus {
  connected,
  disconnected,
}

enum EmailValidationErrors {
  empty,
  invalid,
}

enum PasswordValidationErrors {
  empty,
  tooShort,
  tooLong,
  noUppercase,
  noLowercase,
  noNumber,
  noSpecialCharacter,
}

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

extension DifficultyString on Difficulty {
  String get label {
    switch (this) {
      case Difficulty.easy:
        return 'Easy';
      case Difficulty.medium:
        return 'Medium';
      case Difficulty.hard:
        return 'Hard';
    }
  }
}

@JsonEnum(valueField: 'confidence')
@HiveType(typeId: 5)
enum Confidence {
  @HiveField(0)
  @JsonValue('Low')
  low,
  @HiveField(1)
  @JsonValue('Medium')
  medium,
  @HiveField(2)
  @JsonValue('High')
  high,
}

extension ConfidenceString on Confidence {
  String get label {
    switch (this) {
      case Confidence.low:
        return 'Low';
      case Confidence.medium:
        return 'Medium';
      case Confidence.high:
        return 'High';
    }
  }
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

extension CategoryString on Category {
  String get name {
    switch (this) {
      case Category.arrayAndHashing:
        return 'Arrays & Hashing';
      case Category.twoPointers:
        return 'Two Pointers';
      case Category.slidingWindow:
        return 'Sliding Window';
      case Category.stack:
        return 'Stack';
      case Category.binarySearch:
        return 'Binary Search';
      case Category.trees:
        return 'Trees';
      case Category.tries:
        return 'Tries';
      case Category.linkedList:
        return 'Linked List';
      case Category.heapAndPriorityQueue:
        return 'Heap & Priority Queue';
      case Category.backtracking:
        return 'Backtracking';
      case Category.graphs:
        return 'Graphs';
      case Category.advancedGraphs:
        return 'Advanced Graphs';
      case Category.dynamicProgramming:
        return 'Dynamic Programming';
      case Category.advancedDynamicProgramming:
        return 'Advanced Dynamic Programming';
      case Category.greedy:
        return 'Greedy';
      case Category.intervals:
        return 'Intervals';
      case Category.bitManipulation:
        return 'Bit Manipulation';
      case Category.mathAndGeometry:
        return 'Math & Geometry';
    }
  }

  String get icon {
    switch (this) {
      case Category.arrayAndHashing:
        return 'assets/svg/array_hashing.svg';
      case Category.twoPointers:
        return 'assets/svg/two_pointers.svg';
      case Category.slidingWindow:
        return 'assets/svg/sliding_window.svg';
      case Category.stack:
        return 'assets/svg/stack.svg';
      case Category.binarySearch:
        return 'assets/svg/binary_search.svg';
      case Category.trees:
        return 'assets/svg/trees.svg';
      case Category.tries:
        return 'assets/svg/tries.svg';
      case Category.linkedList:
        return 'assets/svg/linked_list.svg';
      case Category.heapAndPriorityQueue:
        return 'assets/svg/heap_priority_queue.svg';
      case Category.backtracking:
        return 'assets/svg/backtracking.svg';
      case Category.graphs:
        return 'assets/svg/graphs.svg';
      case Category.advancedGraphs:
        return 'assets/svg/advanced_graphs.svg';
      case Category.dynamicProgramming:
        return 'assets/svg/dynamic_programming.svg';
      case Category.advancedDynamicProgramming:
        return 'assets/svg/advanced_dynamic_programming.svg';
      case Category.greedy:
        return 'assets/svg/greedy.svg';
      case Category.intervals:
        return 'assets/svg/intervals.svg';
      case Category.bitManipulation:
        return 'assets/svg/bit_manipulation.svg';
      case Category.mathAndGeometry:
        return 'assets/svg/math_geometry.svg';
    }
  }
}
