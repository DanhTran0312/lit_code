import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:lit_code/business_logic/cubits/cubit/sign_up_cubit.dart';
import 'package:lit_code/data/repositories/repositories.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignUpCubit(
          authRepository: context.read<AuthRepository>(),
        ),
        child: BlocListener<SignUpCubit, SignUpState>(
          listener: (context, state) {
            if (state.status.isSubmissionInProgress) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Signing Up...')),
                );
            } else if (state.status.isSubmissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    content: Text(state.errorMessages ?? 'Sign Up Failure'),
                  ),
                );
            }
          },
          child: _SignUpPage(
            size: size,
            theme: theme,
          ),
        ),
      ),
    );
  }
}

class _SignUpPage extends StatelessWidget {
  const _SignUpPage({
    required this.theme,
    required this.size,
  });

  final ThemeData theme;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ImageContainer(
        theme: theme,
        size: size,
        darkBackgroundImage: 'assets/images/dark_auth_screen_background.png',
        lightBackgroundImage: 'assets/images/light_auth_screen_background.png',
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
        ),
        child: SignUpForm(theme: theme),
      ),
    );
  }
}
