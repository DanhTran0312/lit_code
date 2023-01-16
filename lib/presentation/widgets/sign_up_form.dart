import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/cubits/cubit/sign_up_cubit.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required this.theme,
  });
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Sign Up',
          style: theme.textTheme.headline2,
          textAlign: TextAlign.start,
        ),
        const SizedBox(height: sizeBoxHeightLarge),
        _EmailInput(),
        const SizedBox(height: sizeBoxHeightMedium),
        _PasswordInput(),
        const SizedBox(height: sizeBoxHeightMedium),
        _ConfirmPasswordInput(),
        const SizedBox(height: sizeBoxHeightLarge),
        CustomElevatedButton(
          text: 'Sign Up',
          onPressed: () {
            context.read<SignUpCubit>().signUpWithEmailAndPassword();
          },
        ),
        const SizedBox(height: sizeBoxHeightMedium),
        _SignInOption(theme: theme),
      ],
    );
  }
}

class _SignInOption extends StatelessWidget {
  const _SignInOption({
    required this.theme,
  });

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: theme.textTheme.bodyText1,
        ),
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Sign In',
            style: theme.textTheme.bodyText1!.copyWith(
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return CustomTextFormField(
          labelText: 'Email Address',
          hintText: 'Enter your email adress',
          fieldKey: const Key('signUpForm_emailInput_textField'),
          onChanged: (value) => context.read<SignUpCubit>().emailChanged(value),
          errorText: context.select(
            (SignUpCubit cubit) =>
                cubit.state.email.invalid ? 'Invalid Email' : null,
          ),
        );
      },
    );
  }
}

class _PasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return CustomTextFormField(
          labelText: 'Password',
          hintText: 'Enter your password',
          fieldKey: const Key('signUpForm_passwordInput_textField'),
          onChanged: (value) =>
              context.read<SignUpCubit>().passwordChanged(value),
          obscureText: true,
          errorText: context.select(
            (SignUpCubit cubit) =>
                cubit.state.password.invalid ? 'Invalid Password' : null,
          ),
        );
      },
    );
  }
}

class _ConfirmPasswordInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      buildWhen: (previous, current) =>
          previous.confirmPassword != current.confirmPassword ||
          previous.password != current.password,
      builder: (context, state) {
        return CustomTextFormField(
          labelText: 'Confirm Password',
          hintText: 'Confirm your password',
          fieldKey: const Key('signUpForm_confirmPasswordInput_textField'),
          obscureText: true,
          onChanged: (value) =>
              context.read<SignUpCubit>().confirmPasswordChanged(value),
          errorText: context.select(
            (SignUpCubit cubit) => cubit.state.confirmPassword.invalid
                ? 'Passwords do not match'
                : null,
          ),
        );
      },
    );
  }
}
