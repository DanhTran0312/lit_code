import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:lit_code/constants/constants.dart';

part 'experience_state.dart';
part 'experience_cubit.g.dart';
part 'experience_cubit.freezed.dart';

class ExperienceCubit extends Cubit<ExperienceState> with HydratedMixin {
  ExperienceCubit() : super(const ExperienceState.notCompleted());

  void updateExperience(Experience experience) {
    emit(ExperienceState.notCompleted(experience: experience));
  }

  void completeExperience() {
    emit(ExperienceState.completed(experience: state.experience));
  }

  void resetExperience() {
    emit(const ExperienceState.notCompleted());
  }

  @override
  ExperienceState? fromJson(Map<String, dynamic> json) {
    return ExperienceState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ExperienceState state) {
    return state.toJson();
  }
}
