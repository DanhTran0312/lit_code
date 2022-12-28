import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/data/models/models.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final SignUp signUp = SignUp(
    email: '',
    password: '',
    comfirmPassword: '',
  );
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocListener<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.of(context).pushNamed('/home');
          } else if (state is Loading) {
            const CircularProgressIndicator();
          } else if (state is AuthError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.error),
              ),
            );
          }
        },
        child: SingleChildScrollView(
          child: ImageContainer(
            theme: theme,
            size: size,
            darkBackgroundImage:
                'assets/images/dark_auth_screen_background.png',
            lightBackgroundImage:
                'assets/images/light_auth_screen_background.png',
            padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
            ),
            child: SignUpForm(formKey: _formKey, theme: theme, signUp: signUp),
          ),
        ),
      ),
    );
  }
}
