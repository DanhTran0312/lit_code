part of 'experience_cubit.dart';

@freezed
class ExperienceState with _$ExperienceState {
  const factory ExperienceState.notCompleted({
    @Default(Experience.beginner) Experience experience,
  }) = ExperienceNotCompleted;

  const factory ExperienceState.completed({
    required Experience experience,
  }) = ExperienceCompleted;

  factory ExperienceState.fromJson(Map<String, dynamic> json) =>
      _$ExperienceStateFromJson(json);
}
