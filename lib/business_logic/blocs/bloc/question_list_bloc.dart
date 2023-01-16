import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_list_event.dart';
part 'question_list_state.dart';
part 'question_list_bloc.freezed.dart';

// QuestionListBloc listens to QuestionListEvents and emits a new state
// depending on the event type.
// QuestionListBloc listens to two events: FetchQuestions and
// UpdateQuestions.
// FetchQuestions is used to fetch the questions from the server.
// UpdateQuestions is used to update the questions in the local database.
// The bloc emits a QuestionListInitial state when initialized.
// The bloc emits a QuestionListLoading state when it is fetching or updating
// the questions.
// The bloc emits a QuestionListLoaded state when it has finished fetching
// or updating the questions.
// The bloc emits a QuestionListError state when it has encountered an error.

class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  QuestionListBloc({
    required this.questionRepository,
  }) : super(const QuestionListInitial()) {
    on<FetchQuestions>((event, emit) async {
      emit(const QuestionListLoading());
      try {
        final questions = await questionRepository.getQuestions();
        emit(QuestionListLoaded(questions));
      } catch (e) {
        emit(QuestionListError(e.toString()));
      }
    });

    on<UpdateQuestions>((event, emit) async {
      emit(const QuestionListLoading());
      try {
        await questionRepository.updateQuestions(event.questions);
        emit(QuestionListLoaded(event.questions));
      } catch (e) {
        emit(QuestionListError(e.toString()));
      }
    });
  }
  final QuestionRepository questionRepository;
}
