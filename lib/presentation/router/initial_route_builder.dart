import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/presentation/screens/screens.dart';

class InitialRouteBuilder extends StatelessWidget {
  const InitialRouteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnBoardingCubit(),
      child: BlocConsumer<AuthBloc, AuthState>(
        builder: (context, state) {
          // Check if on-boarding has been completed
          if (BlocProvider.of<OnBoardingCubit>(context).state is! OnBoarded) {
            BlocProvider.of<OnBoardingCubit>(context).showOnBoarding();
            return const OnBoardingScreen();
          } else {
            if (state is Unknown) {
              BlocProvider.of<AuthBloc>(context)
                  .add(const AuthCheckRequested());
            } else if (state is Authenticated) {
              return const HomeScreen();
            } else if (state is Unauthenticated) {
              return SignInScreen();
            }
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
        listener: (context, state) {
          if (state is Authenticated) {
            Navigator.of(context).pushReplacementNamed('/home');
          } else if (state is Unauthenticated) {
            Navigator.of(context).pushReplacementNamed('/login');
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
      ),
    );
  }
}
