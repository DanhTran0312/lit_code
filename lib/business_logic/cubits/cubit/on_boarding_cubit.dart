import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'on_boarding_state.dart';
part 'on_boarding_cubit.g.dart';
part 'on_boarding_cubit.freezed.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(const OnBoardingState.onBoardingNotCompleted());

  void onBoarded() => emit(const OnBoardingState.onBoarded());

  void showOnBoarding() {
    try {
      if (state is OnBoardingNotCompleted) {
        emit(const OnBoardingState.onBoardingStepOne());
      }
    } catch (e) {
      emit(OnBoardingState.onBoardingError(e.toString()));
    }
  }

  final PageController _pageController = PageController();

  PageController? get pageController => _pageController;

  void nextStep() {
    try {
      if (state is OnBoardingStepOne) {
        emit(const OnBoardingState.onBoardingStepTwo());
      } else if (state is OnBoardingStepTwo) {
        emit(const OnBoardingState.onBoardingStepThree());
      } else if (state is OnBoardingStepThree) {
        emit(const OnBoardingState.onBoarded());
      }
      _pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } catch (e) {
      emit(OnBoardingState.onBoardingError(e.toString()));
    }
  }

  // @override
  // OnBoardingState? fromJson(Map<String, dynamic> json) {
  //   return OnBoardingState.fromJson(json);
  // }

  // @override
  // Map<String, dynamic>? toJson(OnBoardingState state) {
  //   return state.toJson();
  // }
}
