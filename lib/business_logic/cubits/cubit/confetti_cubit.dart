import 'package:bloc/bloc.dart';
import 'package:confetti/confetti.dart';

enum ConfettiState { initial, playing, stopped }

class ConfettiCubit extends Cubit<ConfettiState> {
  ConfettiCubit() : super(ConfettiState.initial) {
    _confettiController.addListener(() {
      if (_confettiController.state == ConfettiControllerState.stopped) {
        stopConfetti();
      }
    });
  }
  final ConfettiController _confettiController = ConfettiController(
    duration: const Duration(seconds: 3),
  );

  void startConfetti() {
    _confettiController.play();
    emit(ConfettiState.playing);
  }

  void stopConfetti() {
    _confettiController.stop();
    emit(ConfettiState.stopped);
  }

  ConfettiController get confettiController => _confettiController;

  @override
  Future<void> close() {
    _confettiController.dispose();
    return super.close();
  }
}
