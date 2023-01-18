import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocSelector<QuestionCompletedCubit, QuestionCompletedState,
          List<Question>>(
        selector: (state) {
          if (state is Loaded) {
            return state.completedQuestions.values.toList();
          } else {
            return [];
          }
        },
        builder: (context, completedQuestions) {
          if (completedQuestions.isEmpty) {
            return Center(
              child: Text(
                'No questions completed yet',
                style: Theme.of(context).textTheme.headline6,
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: defaultPageHorizontalPadding,
            ),
            child: BlocProvider(
              create: (context) => QuestionExpansionCubit(),
              child: ListView.builder(
                itemCount: completedQuestions.length,
                itemBuilder: (context, index) {
                  final question = completedQuestions[index];
                  return CollapsableQuestionCard(
                    expansionCubit:
                        BlocProvider.of<QuestionExpansionCubit>(context),
                    isTranparent: false,
                    question: question,
                    questionCompletedCubit:
                        BlocProvider.of<QuestionCompletedCubit>(context),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
