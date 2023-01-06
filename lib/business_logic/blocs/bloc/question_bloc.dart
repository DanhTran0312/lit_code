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
  }) : super(const Loading()) {
    on<FetchQuestion>((event, emit) async {
      emit(const Loading());
      try {
        final question = await questionRepository.getQuestion(event.id);
        emit(Loaded(question));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });
    on<UpdateQuestion>((event, emit) async {
      emit(const Loading());
      try {
        await questionRepository.updateQuestion(event.question);
        emit(Loaded(event.question));
      } catch (e) {
        emit(Error(e.toString()));
      }
    });
  }
  final QuestionRepository questionRepository;
}
