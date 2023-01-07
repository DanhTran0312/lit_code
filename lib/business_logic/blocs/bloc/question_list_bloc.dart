import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_list_event.dart';
part 'question_list_state.dart';
part 'question_list_bloc.freezed.dart';

class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  QuestionListBloc({required this.questionRepository})
      : super(const Initial()) {
    on<FetchQuestions>((event, emit) async {
      emit(const Loading());
      try {
        final questions = await questionRepository.getQuestions();
        emit(Loaded(questions));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });
    on<UpdateQuestions>((event, emit) async {
      emit(const Loading());
      try {
        await questionRepository.updateQuestions(event.questions);
        emit(Loaded(event.questions));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });
  }
  final QuestionRepository questionRepository;
}
