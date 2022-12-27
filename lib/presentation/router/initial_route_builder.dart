import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/auth_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/on_boarding_cubit.dart';
import 'package:lit_code/presentation/screens/screens.dart';

class InitialRouteBuilder extends StatelessWidget {
  const InitialRouteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        if (state is Authenticated) {
          return const HomeScreen();
        } else if (state is Unauthenticated) {
          return LoginScreen();
        } else if (state is AuthError) {
          return const Scaffold(
            body: Center(
              child: Text('Error'),
            ),
          );
        }
        // Check if on-boarding has been completed
        if (BlocProvider.of<OnBoardingCubit>(context).state is! OnBoarded) {
          BlocProvider.of<OnBoardingCubit>(context).showOnBoarding();
          return const OnBoardingScreen();
        } else {
          if (state is Unknown) {
            BlocProvider.of<AuthBloc>(context).add(const AuthCheckRequested());
          }
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
