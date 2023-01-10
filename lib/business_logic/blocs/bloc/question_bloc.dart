import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/question_repository.dart';

part 'question_event.dart';
part 'question_state.dart';
part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  QuestionBloc({
    required this.questionRepository,
  }) : super(const QuestionInitial()) {
    on<FetchQuestionRequested>((event, emit) async {
      emit(const QuestionLoading());
      try {
        final question = await questionRepository.getQuestion(event.id);
        emit(QuestionLoaded(question));
      } catch (e) {
        emit(QuestionError(e.toString()));
      }
    });
    on<UpdateQuestionRequested>((event, emit) async {
      emit(const QuestionLoading());
      try {
        await questionRepository.updateQuestion(event.question);
        emit(QuestionLoaded(event.question));
      } catch (e) {
        emit(QuestionError(e.toString()));
      }
    });
  }
  final QuestionRepository questionRepository;
}
