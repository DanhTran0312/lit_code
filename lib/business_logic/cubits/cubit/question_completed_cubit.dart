import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_completed_state.dart';
part 'question_completed_cubit.freezed.dart';

class QuestionCompletedCubit extends Cubit<QuestionCompletedState> {
  QuestionCompletedCubit({required this.userRepository})
      : super(const QuestionCompletedState.initial());

  final UserRepository userRepository;

  Future<void> markQuestionAsCompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await userRepository.markQuestionAsCompleted(question);
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  Future<void> markQuestionAsUncompleted(Question question) async {
    emit(const QuestionCompletedState.loading());
    try {
      await userRepository.markQuestionAsUncompleted(question);
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }

  Future<void> getCompletedQuestions() async {
    emit(const QuestionCompletedState.loading());
    try {
      final questions = await userRepository.getCompletedQuestions();
      emit(QuestionCompletedState.loaded(questions));
    } catch (e) {
      emit(QuestionCompletedState.error(e.toString()));
    }
  }
}
