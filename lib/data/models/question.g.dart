// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionAdapter extends TypeAdapter<Question> {
  @override
  final int typeId = 1;

  @override
  Question read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Question(
      id: fields[0] as String,
      title: fields[1] as String,
      difficulty: fields[2] as Difficulty,
      category: fields[3] as Category,
      link: fields[4] as String,
      completedAt: fields[5] as DateTime?,
      isCompleted: fields[6] as bool,
      confidence: fields[7] as Confidence?,
    );
  }

  @override
  void write(BinaryWriter writer, Question obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.difficulty)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.link)
      ..writeByte(5)
      ..write(obj.completedAt)
      ..writeByte(6)
      ..write(obj.isCompleted)
      ..writeByte(7)
      ..write(obj.confidence);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      title: json['title'] as String,
      difficulty: $enumDecode(_$DifficultyEnumMap, json['difficulty']),
      category: $enumDecode(_$CategoryEnumMap, json['category']),
      link: json['link'] as String,
      completedAt: json['completedAt'] == null
          ? null
          : DateTime.parse(json['completedAt'] as String),
      isCompleted: json['isCompleted'] as bool? ?? false,
      confidence: $enumDecodeNullable(_$ConfidenceEnumMap, json['confidence']),
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'difficulty': _$DifficultyEnumMap[instance.difficulty]!,
      'category': _$CategoryEnumMap[instance.category]!,
      'link': instance.link,
      'completedAt': instance.completedAt?.toIso8601String(),
      'isCompleted': instance.isCompleted,
      'confidence': _$ConfidenceEnumMap[instance.confidence],
    };

const _$DifficultyEnumMap = {
  Difficulty.easy: 'Easy',
  Difficulty.medium: 'Medium',
  Difficulty.hard: 'Hard',
};

const _$CategoryEnumMap = {
  Category.arrayAndHashing: 'Arrays & Hashing',
  Category.twoPointers: 'Two Pointers',
  Category.slidingWindow: 'Sliding Window',
  Category.stack: 'Stack',
  Category.binarySearch: 'Binary Search',
  Category.trees: 'Trees',
  Category.tries: 'Tries',
  Category.linkedList: 'Linked List',
  Category.heapAndPriorityQueue: 'Heap & Priority Queue',
  Category.backtracking: 'Backtracking',
  Category.graphs: 'Graphs',
  Category.advancedGraphs: 'Advanced Graphs',
  Category.dynamicProgramming: 'Dynamic Programming',
  Category.advancedDynamicProgramming: 'Advanced Dynamic Programming',
  Category.greedy: 'Greedy',
  Category.intervals: 'Intervals',
  Category.bitManipulation: 'Bit Manipulation',
  Category.mathAndGeometry: 'Math & Geometry',
};

const _$ConfidenceEnumMap = {
  Confidence.low: 'Low',
  Confidence.medium: 'Medium',
  Confidence.high: 'High',
};
