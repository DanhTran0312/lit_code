import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lit_code/business_logic/cubits/cubit/network_connection_cubit.dart';
import 'package:lit_code/presentation/widgets/widgets.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const PersistedBottomNavBar(),
      body: Center(
        child: BlocBuilder<NetworkConnectionCubit, NetworkConnectionState>(
          builder: (context, state) {
            if (state is Disconnected) {
              return Text('Disconnected');
            } else if (state is Connected) {
              return Text('Connected');
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
