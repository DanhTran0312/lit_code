// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserAdapter extends TypeAdapter<User> {
  @override
  final int typeId = 0;

  @override
  User read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return User(
      id: fields[1] as String,
      name: fields[2] as String?,
      email: fields[3] as String?,
      photoUrl: fields[4] as String?,
      settings: fields[5] as Settings?,
      completedQuestions: (fields[6] as List).cast<Question?>(),
      questionsVersion: fields[7] as String?,
      lastSynced: fields[8] as int?,
      streak: fields[9] as int?,
      experience: fields[10] as Experience?,
      todayQuestions: (fields[11] as List?)?.cast<Question?>(),
      thisWeekQuestions: (fields[12] as List?)?.cast<Question?>(),
      lastQuestionGenerated: fields[13] as int?,
      experienceLevel: fields[14] as double?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(14)
      ..writeByte(1)
      ..write(obj.id)
      ..writeByte(2)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.email)
      ..writeByte(4)
      ..write(obj.photoUrl)
      ..writeByte(5)
      ..write(obj.settings)
      ..writeByte(6)
      ..write(obj.completedQuestions)
      ..writeByte(7)
      ..write(obj.questionsVersion)
      ..writeByte(8)
      ..write(obj.lastSynced)
      ..writeByte(9)
      ..write(obj.streak)
      ..writeByte(10)
      ..write(obj.experience)
      ..writeByte(11)
      ..write(obj.todayQuestions)
      ..writeByte(12)
      ..write(obj.thisWeekQuestions)
      ..writeByte(13)
      ..write(obj.lastQuestionGenerated)
      ..writeByte(14)
      ..write(obj.experienceLevel);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photoUrl'] as String?,
      settings: json['settings'] == null
          ? const Settings()
          : Settings.fromJson(json['settings'] as Map<String, dynamic>),
      completedQuestions: (json['completedQuestions'] as List<dynamic>?)
              ?.map((e) => e == null
                  ? null
                  : Question.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      questionsVersion: json['questionsVersion'] as String? ?? '',
      lastSynced: json['lastSynced'] as int?,
      streak: json['streak'] as int?,
      experience:
          $enumDecodeNullable(_$ExperienceEnumMap, json['experience']) ??
              Experience.intermediate,
      todayQuestions: (json['todayQuestions'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      thisWeekQuestions: (json['thisWeekQuestions'] as List<dynamic>?)
          ?.map((e) =>
              e == null ? null : Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastQuestionGenerated: json['lastQuestionGenerated'] as int?,
      experienceLevel: (json['experienceLevel'] as num?)?.toDouble() ?? 5.0,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'settings': instance.settings,
      'completedQuestions': instance.completedQuestions,
      'questionsVersion': instance.questionsVersion,
      'lastSynced': instance.lastSynced,
      'streak': instance.streak,
      'experience': _$ExperienceEnumMap[instance.experience],
      'todayQuestions': instance.todayQuestions,
      'thisWeekQuestions': instance.thisWeekQuestions,
      'lastQuestionGenerated': instance.lastQuestionGenerated,
      'experienceLevel': instance.experienceLevel,
    };

const _$ExperienceEnumMap = {
  Experience.beginner: 'beginner',
  Experience.intermediate: 'intermediate',
  Experience.advanced: 'advanced',
};
