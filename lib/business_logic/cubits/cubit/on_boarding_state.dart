part of 'on_boarding_cubit.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  factory OnBoardingState.fromJson(Map<String, dynamic> json) =>
      _$OnBoardingStateFromJson(json);
  const factory OnBoardingState.onBoardingNotCompleted() =
      OnBoardingNotCompleted;
  const factory OnBoardingState.onBoarded() = OnBoarded;
  const factory OnBoardingState.onBoardingStepOne() = OnBoardingStepOne;
  const factory OnBoardingState.onBoardingStepTwo() = OnBoardingStepTwo;
  const factory OnBoardingState.onBoardingStepThree() = OnBoardingStepThree;
  const factory OnBoardingState.onBoardingError(String message) =
      OnBoardingError;

  const OnBoardingState._();

  int stepCount() {
    if (this is OnBoardingStepOne) {
      return 1;
    } else if (this is OnBoardingStepTwo) {
      return 2;
    } else if (this is OnBoardingStepThree) {
      return 3;
    } else {
      return 0;
    }
  }
}
