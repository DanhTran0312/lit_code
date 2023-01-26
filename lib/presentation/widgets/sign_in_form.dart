import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/cubits/cubit/sign_in_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _EmailInput(),
        _PasswordInput(),
        const SizedBox(height: sizeBoxLarge),
        CustomElevatedButton(
          text: 'Sign In',
          onPressed: () {
            context.read<SignInCubit>().signInWithEmailAndPassword();
          },
        ),
        const SizedBox(height: sizeBoxLarge),
        CustomElevatedButtonWithImage(
          text: 'Sign In with Google',
          image: SvgPicture.asset(
            'assets/svg/google_logo.svg',
            fit: BoxFit.cover,
          ),
          onPressed: () {
            context.read<SignInCubit>().signInWithGoogle();
          },
        ),
        const SizedBox(height: sizeBoxMedium),
        CustomElevatedButtonWithImage(
          text: 'Sign In with Apple',
          image: SvgPicture.asset(
            ThemeUtils.getBackgroundUrlFromTheme(
              theme,
              'assets/svg/apple_logo_light.svg',
              'assets/svg/apple_logo_dark.svg',
            ),
            fit: BoxFit.cover,
          ),
          onPressed: () {
            // TODO: Implement Apple Sign In
          },
        ),
        const SizedBox(height: sizeBoxSmall),
        _SignUpOption(theme: theme),
      ],
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomTextFormField(
          fieldKey: const Key('loginForm_emailInput_textField'),
          keyboardType: TextInputType.emailAddress,
          hintText: 'Email',
          labelText: 'Email Address',
          obscureText: false,
          onChanged: (value) => context.read<SignInCubit>().emailChanged(value),
          errorText: state.email.invalid ? 'invalid email' : null,
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInCubit, SignInState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return CustomTextFormField(
          fieldKey: const Key('loginForm_passwordInput_textField'),
          hintText: 'Password',
          labelText: 'Password',
          obscureText: true,
          onChanged: (value) =>
              context.read<SignInCubit>().passwordChanged(value),
          errorText: state.password.invalid ? 'invalid password' : null,
        );
      },
    );
  }
}

class _SignUpOption extends StatelessWidget {
  const _SignUpOption({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: theme.textTheme.bodyText1,
        ),
        TextButton(
          onPressed: () {
            context.pushNamed('signUp');
          },
          child: Text(
            'Sign Up',
            style: theme.textTheme.bodyText1!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
