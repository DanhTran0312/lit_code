import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/constants/constants.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';
import 'package:lit_code/theme/theme_utils.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    super.key,
    required GlobalKey<FormState> formKey,
    required this.signIn,
    required this.theme,
  }) : _formKey = formKey;

  final GlobalKey<FormState> _formKey;
  final SignIn signIn;
  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            hintText: 'Email',
            labelText: 'Email Address',
            obscureText: false,
            onSaved: (newValue) => signIn.email = newValue!,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your email';
              }
              return null;
            },
          ),
          const SizedBox(height: sizeBoxHeightMedium),
          CustomTextFormField(
            hintText: 'Password',
            labelText: 'Password',
            obscureText: true,
            onSaved: (newValue) => signIn.password = newValue!,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),
          const SizedBox(height: sizeBoxHeightLarge),
          CustomElevatedButton(
            text: 'Sign In',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                BlocProvider.of<AuthBloc>(context).add(
                  SignInRequested(
                    email: signIn.email,
                    password: signIn.password,
                  ),
                );
              }
            },
          ),
          const SizedBox(height: sizeBoxHeightLarge),
          CustomElevatedButtonWithImage(
            text: 'Sign In with Google',
            image: SvgPicture.asset(
              'assets/svg/google_logo.svg',
              fit: BoxFit.cover,
            ),
            onPressed: () {
              BlocProvider.of<AuthBloc>(context)
                  .add(const GoogleSignInRequested());
            },
          ),
          const SizedBox(height: sizeBoxHeightMedium),
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
            onPressed: () {},
          ),
          const SizedBox(height: sizeBoxHeightSmall),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: theme.textTheme.bodyText1,
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed('/signup');
                },
                child: Text(
                  'Sign Up',
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
