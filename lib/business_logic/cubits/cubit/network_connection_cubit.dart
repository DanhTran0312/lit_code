import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_connection_state.dart';
part 'network_connection_cubit.freezed.dart';

class NetworkConnectionCubit extends Cubit<NetworkConnectionState> {
  NetworkConnectionCubit({
    required this.connectivity,
  }) : super(const Initial()) {
    monitorConnection();
  }

  StreamSubscription<ConnectivityResult> monitorConnection() {
    return connectivitySubscription =
        connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      if (result == ConnectivityResult.none) {
        disconnected();
      } else {
        connected();
      }
    });
  }

  void connected() => emit(const NetworkConnectionState.connected());

  void disconnected() => emit(const NetworkConnectionState.disconnected());

  final Connectivity connectivity;
  late StreamSubscription<ConnectivityResult> connectivitySubscription;

  @override
  Future<void> close() {
    connectivitySubscription.cancel();
    return super.close();
  }
}
