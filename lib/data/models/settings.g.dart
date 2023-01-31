// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final int typeId = 2;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(
      themeMode: fields[0] as ThemeMode?,
      isNotificationsEnabled: fields[1] as bool,
      difficulties: (fields[2] as List).cast<Difficulty>(),
      categories: (fields[3] as List).cast<Category>(),
      goalDate: fields[4] as int?,
      goalQuestions: fields[5] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.themeMode)
      ..writeByte(1)
      ..write(obj.isNotificationsEnabled)
      ..writeByte(2)
      ..write(obj.difficulties)
      ..writeByte(3)
      ..write(obj.categories)
      ..writeByte(4)
      ..write(obj.goalDate)
      ..writeByte(5)
      ..write(obj.goalQuestions);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Settings _$$_SettingsFromJson(Map<String, dynamic> json) => _$_Settings(
      themeMode: $enumDecodeNullable(_$ThemeModeEnumMap, json['themeMode']) ??
          ThemeMode.system,
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
            Category.mathAndGeometry
          ],
      goalDate: json['goalDate'] as int?,
      goalQuestions: json['goalQuestions'] as int?,
    );

Map<String, dynamic> _$$_SettingsToJson(_$_Settings instance) =>
    <String, dynamic>{
      'themeMode': _$ThemeModeEnumMap[instance.themeMode],
      'isNotificationsEnabled': instance.isNotificationsEnabled,
      'difficulties':
          instance.difficulties.map((e) => _$DifficultyEnumMap[e]!).toList(),
      'categories':
          instance.categories.map((e) => _$CategoryEnumMap[e]!).toList(),
      'goalDate': instance.goalDate,
      'goalQuestions': instance.goalQuestions,
    };

const _$ThemeModeEnumMap = {
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
  ThemeMode.system: 'system',
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
