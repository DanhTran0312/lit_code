import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/completed_question_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_recommendation_cubit.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final questionRecommendationCubit = QuestionRecommendationCubit(
      questionRecommendationRepository:
          RepositoryProvider.of<QuestionRecommendationRepository>(context),
    );
    return Scaffold(
      body: BlocProvider(
        create: (context) => questionRecommendationCubit,
        child: _ReviewScreenContent(
          questionRecommendationCubit: questionRecommendationCubit,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          questionRecommendationCubit.getRecommendedQuestions(5);
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

class _ReviewScreenContent extends StatelessWidget {
  const _ReviewScreenContent({
    required QuestionRecommendationCubit questionRecommendationCubit,
  }) : _questionRecommendationCubit = questionRecommendationCubit;

  final QuestionRecommendationCubit _questionRecommendationCubit;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuestionRecommendationCubit,
        QuestionRecommendationState>(
      bloc: _questionRecommendationCubit,
      listener: (context, state) {
        if (state is QuestionRecommendationError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        if (state is QuestionRecommendationInitial) {
          return const Center(child: Text('Press the button to get started'));
        } else if (state is QuestionRecommendationLoading) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is QuestionRecommendationLoaded) {
          return BlocProvider(
            create: (context) => QuestionExpansionCubit(),
            child: ListView.builder(
              itemCount: state.questions.length,
              itemBuilder: (context, index) {
                final question = state.questions[index];
                return CollapsableQuestionCard(
                  expansionCubit:
                      BlocProvider.of<QuestionExpansionCubit>(context),
                  isTranparent: false,
                  question: question,
                  completedQuestionCubit:
                      BlocProvider.of<CompletedQuestionCubit>(context),
                );
              },
            ),
          );
        } else if (state is QuestionRecommendationError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.message),
                ElevatedButton(
                  onPressed: () {
                    _questionRecommendationCubit.getRecommendedQuestions(5);
                  },
                  child: const Text('Retry'),
                ),
              ],
            ),
          );
        } else {
          return const Center(child: Text('Something went wrong'));
        }
      },
    );
  }
}
