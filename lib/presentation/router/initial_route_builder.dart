import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:lit_code/business_logic/blocs/bloc/app_bloc.dart';

class InitialRouteBuilder extends StatelessWidget {
  const InitialRouteBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'InitialRouteBuilder',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
