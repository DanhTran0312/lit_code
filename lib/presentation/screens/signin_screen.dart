import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/constants/constant.dart';
import 'package:lit_code/data/models/sign_in.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final _formKey = GlobalKey<FormState>();
  final SignIn signIn = SignIn(
    email: '',
    password: '',
  );
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          Navigator.of(context).pushNamed('/home');
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.error),
            ),
          );
        } else if (state is Loading) {
          const CircularProgressIndicator();
        }
      },
      child: Scaffold(
        body: SignInScreenContent(
          size: size,
          theme: theme,
          formKey: _formKey,
          signIn: signIn,
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
    required GlobalKey<FormState> formKey,
    required this.signIn,
  }) : _formKey = formKey;

  final Size size;
  final ThemeData theme;
  final GlobalKey<FormState> _formKey;
  final SignIn signIn;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ImageContainer(
        size: size,
        theme: theme,
        darkBackgroundImage: 'assets/images/dark_auth_screen_background.png',
        lightBackgroundImage: 'assets/images/light_auth_screen_background.png',
        padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.1,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomText(theme: theme),
            const SizedBox(height: sizeBoxHeightLarge),
            SignInForm(formKey: _formKey, signIn: signIn, theme: theme),
          ],
        ),
      ),
    );
  }
}
