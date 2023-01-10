import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_bloc.dart';

import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_completed_cubit.dart';
import 'package:lit_code/business_logic/cubits/cubit/question_expansion_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const PersistedBottomNavBar(),
      body: BlocConsumer<QuestionCompletedCubit, QuestionCompletedState>(
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is Initial) {
            BlocProvider.of<QuestionCompletedCubit>(context)
                .getCompletedQuestions();
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            final completedQuestions = state.completedQuestions;
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
                      question: question!,
                      questionCompletedCubit:
                          BlocProvider.of<QuestionCompletedCubit>(context),
                    );
                  },
                ),
              ),
            );
          } else {
            return const Center(
              child: Text('Something went wrong'),
            );
          }
        },
      ),
    );
  }
}
