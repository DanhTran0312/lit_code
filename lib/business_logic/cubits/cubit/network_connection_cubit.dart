// ignore_for_file: comment_references, lines_longer_than_80_chars

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_connection_state.dart';
part 'network_connection_cubit.freezed.dart';

/// This class is used to monitor the network connection.
///
/// The class extends [Cubit] and listens to the [Connectivity] package
/// [Stream] to detect changes in the network connection.
///
/// Depending on the network connection status, the [Cubit] will emit
/// the appropriate [NetworkConnectionState] which will be used by the
/// [NetworkConnectionMonitor] to determine if the network connection
/// is available or not.
///
/// The [connectivity] constructor parameter is required to allow the
/// class to listen to the [Connectivity] package [Stream] and detect
/// changes in the network connection.
///
/// The [monitorConnection] method is used to listen to the
/// [Connectivity] package [Stream] and detect changes in the network
/// connection.
///
/// The [connected] method is used to emit the [NetworkConnectionState.connected]
/// state when the network connection is restored.
///
/// The [disconnected] method is used to emit the
/// [NetworkConnectionState.disconnected] state when the network connection
/// is lost.
///
/// The [connectivitySubscription] stores the [StreamSubscription] that is
/// used to listen to the [Connectivity] package [Stream].
///
/// The [close] method is called when the [NetworkConnectionCubit] is closed.
/// It is used to cancel the [StreamSubscription] in the
/// [connectivitySubscription] variable.
///
/// The [NetworkConnectionCubit] is used by the [NetworkConnectionMonitor]
/// class to determine if the network connection is available or not.

class NetworkConnectionCubit extends Cubit<NetworkConnectionState> {
  NetworkConnectionCubit({
    required this.connectivity,
  }) : super(const NetworkInitial()) {
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
