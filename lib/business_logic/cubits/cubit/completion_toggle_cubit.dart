import 'package:bloc/bloc.dart';

class CompletionToggleCubit extends Cubit<int> {
  CompletionToggleCubit() : super(0);

  void toggle() {
    emit(state == 0 ? 1 : 0);
  }
}
