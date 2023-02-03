import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/data/repositories/repositories.dart';

part 'today_question_state.dart';
part 'today_question_cubit.freezed.dart';

class TodayQuestionCubit extends Cubit<TodayQuestionState> {
  TodayQuestionCubit({
    required QuestionRecommendationRepository questionRecommendationRepository,
    required UserRepository userRepository,
  })  : _questionRecommendationRepository = questionRecommendationRepository,
        _userRepository = userRepository,
        super(const TodayQuestionState.initial());

  Future<void> fetchTodayQuestion() async {
    emit(const TodayQuestionState.loading());
    try {
      if (_userRepository.user.todayQuestions != null &&
          DateTime.now().millisecondsSinceEpoch -
                  _userRepository.user.timeSinceLastGenerated! <
              86400000) {
        emit(
          TodayQuestionState.loaded(
            _userRepository.user.todayQuestions ?? [],
          ),
        );
      } else {
        final questions = await _questionRecommendationRepository
            .generateRecommendedQuestion(2);
        await _userRepository.updateTodayQuestions(questions);
        await _userRepository.updateTimeSinceLastQuestionGenerated(
          DateTime.now().millisecondsSinceEpoch,
        );
        emit(TodayQuestionState.loaded(questions));
      }
    } catch (e) {
      emit(TodayQuestionState.error(e.toString()));
    }
  }

  Future<void> updateTodayQuestions(List<Question> questions) async {
    try {
      emit(TodayQuestionState.loaded(questions));
    } catch (e) {
      emit(TodayQuestionState.error(e.toString()));
    }
  }

  Future<void> refresh() async {
    if (state is TodayQuestionLoaded) {
      final questions = (state as TodayQuestionLoaded).questions;
      emit(TodayQuestionState.loaded(questions));
    }
  }

  Future<void> reset() async {
    emit(const TodayQuestionState.initial());
  }

  final QuestionRecommendationRepository _questionRecommendationRepository;
  final UserRepository _userRepository;
}
