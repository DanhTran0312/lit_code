import 'package:bloc/bloc.dart';

class QuestionExpansionCubit extends Cubit<Map<String, bool>> {
  QuestionExpansionCubit() : super({});

  void toggleQuestion(String id) {
    emit(state..update(id, (expanded) => !expanded, ifAbsent: () => true));
  }
}
