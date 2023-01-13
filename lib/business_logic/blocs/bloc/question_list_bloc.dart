import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'question_list_event.dart';
part 'question_list_state.dart';
part 'question_list_bloc.freezed.dart';

class QuestionListBloc extends Bloc<QuestionListEvent, QuestionListState> {
  QuestionListBloc({
    required this.questionRepository,
    required this.networkConnectionCubit,
  }) : super(const QuestionListInitial()) {
    networkConnectionSubscription = networkConnectionCubit.stream.listen(
      (state) {
        if (state is Connected) {
        } else {}
      },
    );
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
  final NetworkConnectionCubit networkConnectionCubit;
  late final StreamSubscription networkConnectionSubscription;

  @override
  Future<void> close() {
    networkConnectionSubscription.cancel();
    return super.close();
  }
}
