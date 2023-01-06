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
      completedAt: fields[4] as DateTime,
      isCompleted: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Question obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.difficulty)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.completedAt)
      ..writeByte(5)
      ..write(obj.isCompleted);
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
