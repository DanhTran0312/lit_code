import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'on_boarding_state.dart';
part 'on_boarding_cubit.g.dart';
part 'on_boarding_cubit.freezed.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> with HydratedMixin {
  OnBoardingCubit() : super(const OnBoardingState.onBoardingNotCompleted(0));

  final PageController _pageController = PageController();

  PageController? get pageController => _pageController;

  void onBoardingCompleted() =>
      emit(const OnBoardingState.onBoardingCompleted());

  void nextStep() {
    if (state is OnBoardingNotCompleted) {
      if ((state as OnBoardingNotCompleted).currentStep == 2) {
        onBoardingCompleted();
        return;
      }
      final currentStep = (state as OnBoardingNotCompleted).currentStep;
      emit(OnBoardingState.onBoardingNotCompleted(currentStep + 1));
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  OnBoardingState? fromJson(Map<String, dynamic> json) {
    return OnBoardingState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(OnBoardingState state) {
    return state.toJson();
  }
}
