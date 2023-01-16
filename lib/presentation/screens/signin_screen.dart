import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:lit_code/business_logic/cubits/cubit/sign_in_cubit.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/data/repositories/auth_repository.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignInCubit(
          authRepository: context.read<AuthRepository>(),
        ),
        child: SignInScreenContent(
          size: size,
          theme: theme,
        ),
      ),
    );
  }
}

class SignInScreenContent extends StatelessWidget {
  const SignInScreenContent({
    super.key,
    required this.size,
    required this.theme,
  });

  final Size size;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state.status.isSubmissionFailure) {
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(content: Text(state.errorMessages ?? 'Sign Up Failure')),
            );
        }
      },
      child: SingleChildScrollView(
        child: ImageContainer(
          size: size,
          theme: theme,
          darkBackgroundImage: 'assets/images/dark_auth_screen_background.png',
          lightBackgroundImage:
              'assets/images/light_auth_screen_background.png',
          padding: const EdgeInsets.symmetric(
            horizontal: defaultPageHorizontalPadding,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              WelcomText(theme: theme),
              const SizedBox(height: sizeBoxHeightLarge),
              SignInForm(theme: theme),
            ],
          ),
        ),
      ),
    );
  }
}
