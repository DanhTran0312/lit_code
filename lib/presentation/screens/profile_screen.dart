import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () =>
              context.read<AppBloc>().add(const AppEvent.appLogoutRequested()),
          child: const Text('Sign Out'),
        ),
      ),
    );
  }
}
