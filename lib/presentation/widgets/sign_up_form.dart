import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.theme,
    required this.signUp,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final ThemeData theme;
  final SignUp signUp;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign Up',
            style: theme.textTheme.headline2,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: sizeBoxHeightLarge),
          CustomTextFormField(
            onSaved: (value) {
              signUp.email = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email address';
              }
              return null;
            },
            labelText: 'Email Address',
            hintText: 'Enter your email adress',
          ),
          const SizedBox(height: sizeBoxHeightMedium),
          CustomTextFormField(
            onSaved: (value) {
              signUp.password = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            labelText: 'Password',
            hintText: 'Enter your password',
            obscureText: true,
          ),
          const SizedBox(height: sizeBoxHeightMedium),
          CustomTextFormField(
            onSaved: (value) {
              signUp.comfirmPassword = value!;
            },
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
            labelText: 'Comfirm Password',
            hintText: 'Enter your password',
            obscureText: true,
          ),
          const SizedBox(height: sizeBoxHeightLarge),
          CustomElevatedButton(
            text: 'Sign Up',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                BlocProvider.of<AuthBloc>(context).add(
                  SignUpRequested(
                    email: signUp.email,
                    password: signUp.password,
                  ),
                );
              }
            },
          ),
          const SizedBox(height: sizeBoxHeightMedium),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: theme.textTheme.bodyText1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
                child: Text(
                  'Login',
                  style: theme.textTheme.bodyText1!.copyWith(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
