import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/question_list_bloc.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: const PersistedBottomNavBar(),
      body: BlocConsumer<QuestionListBloc, QuestionListState>(
        builder: (context, state) {
          if (state is Initial) {
            BlocProvider.of<QuestionListBloc>(context).add(
              const FetchQuestions(),
            );
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Loaded) {
            return ListView.builder(
              itemCount: state.questions.length,
              itemBuilder: (context, index) {
                final question = state.questions[index];
                return CollapsableQuestionCard(
                  question: question,
                );
              },
            );
          } else {
            return const Center(child: Text('Something went wrong'));
          }
        },
        listener: (context, state) {
          if (state is Error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
      ),
    );
  }
}
