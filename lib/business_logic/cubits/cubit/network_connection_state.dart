part of 'network_connection_cubit.dart';

/// Returns the number of elements in the collection.
///
/// If [count] is greater than the number of elements in the collection,
/// returns the number of elements in the collection.
///
/// If [count] is less than 0, returns 0.

@freezed
class NetworkConnectionState with _$NetworkConnectionState {
  const factory NetworkConnectionState.initial() = NetworkInitial;
  const factory NetworkConnectionState.connected() = NetworkConnected;
  const factory NetworkConnectionState.disconnected() = NetworkDisconnected;
}
