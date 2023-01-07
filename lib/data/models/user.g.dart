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
      completedQuestions: (fields[6] as List?)?.cast<String>(),
      questionsVersion: fields[7] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, User obj) {
    writer
      ..writeByte(7)
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
      ..write(obj.questionsVersion);
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
              ?.map((e) => e as String)
              .toList() ??
          const [],
      questionsVersion: json['questionsVersion'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'settings': instance.settings,
      'completedQuestions': instance.completedQuestions,
      'questionsVersion': instance.questionsVersion,
    };
