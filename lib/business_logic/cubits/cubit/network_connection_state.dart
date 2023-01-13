part of 'network_connection_cubit.dart';

@freezed
class NetworkConnectionState with _$NetworkConnectionState {
  const factory NetworkConnectionState.initial() = Initial;
  const factory NetworkConnectionState.connected() = Connected;
  const factory NetworkConnectionState.disconnected() = Disconnected;
}
