// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experience_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExperienceNotCompleted _$$ExperienceNotCompletedFromJson(
  Map<String, dynamic> json,
) =>
    _$ExperienceNotCompleted(
      experience:
          $enumDecodeNullable(_$ExperienceEnumMap, json['experience']) ??
              Experience.beginner,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ExperienceNotCompletedToJson(
  _$ExperienceNotCompleted instance,
) =>
    <String, dynamic>{
      'experience': _$ExperienceEnumMap[instance.experience]!,
      'runtimeType': instance.$type,
    };

const _$ExperienceEnumMap = {
  Experience.beginner: 'beginner',
  Experience.intermediate: 'intermediate',
  Experience.advanced: 'advanced',
};

_$ExperienceCompleted _$$ExperienceCompletedFromJson(
  Map<String, dynamic> json,
) =>
    _$ExperienceCompleted(
      experience: $enumDecode(_$ExperienceEnumMap, json['experience']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ExperienceCompletedToJson(
  _$ExperienceCompleted instance,
) =>
    <String, dynamic>{
      'experience': _$ExperienceEnumMap[instance.experience]!,
      'runtimeType': instance.$type,
    };
