import 'package:bloc/bloc.dart';
import 'package:confetti/confetti.dart';

enum ConfettiState { playing, stopped }

class ConfettiCubit extends Cubit<ConfettiState> {
  ConfettiCubit() : super(ConfettiState.stopped) {
    _confettiController.addListener(() {
      if (_confettiController.state == ConfettiControllerState.stopped) {
        emit(ConfettiState.stopped);
      }
    });
  }
  final ConfettiController _confettiController = ConfettiController(
    duration: const Duration(seconds: 2),
  );

  Future<void> startConfetti() async {
    _confettiController.play();
    emit(ConfettiState.playing);
    await Future<void>.delayed(const Duration(seconds: 2));
    _confettiController.stop();
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
