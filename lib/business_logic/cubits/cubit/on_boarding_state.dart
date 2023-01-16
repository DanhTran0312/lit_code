part of 'on_boarding_cubit.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.onBoardingNotCompleted(
    int currentStep,
  ) = OnBoardingNotCompleted;
  const factory OnBoardingState.onBoardingCompleted() = OnBoardingCompleted;

  factory OnBoardingState.fromJson(Map<String, dynamic> json) =>
      _$OnBoardingStateFromJson(json);
}
