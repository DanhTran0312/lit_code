import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/statistics_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<QuestionCompletedCubit, QuestionCompletedState>(
        listener: (context, state) {
          if (state is QuestionCompletedError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        child: BlocBuilder<StatisticsBloc, StatisticsState>(
          builder: (context, state) {
            final completedQuestions = state.completedQuestions.values.toSet();
            final questionCompletedCubit =
                BlocProvider.of<QuestionCompletedCubit>(context);
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPageHorizontalPadding,
              ),
              child: BlocProvider(
                create: (context) => QuestionExpansionCubit(),
                child: ListView.builder(
                  itemCount: completedQuestions.length,
                  itemBuilder: (context, index) {
                    final question = completedQuestions.elementAt(index);
                    return CollapsableQuestionCard(
                      key: Key(question.id),
                      expansionCubit:
                          BlocProvider.of<QuestionExpansionCubit>(context),
                      isTranparent: false,
                      question: question,
                      questionCompletedCubit: questionCompletedCubit,
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
