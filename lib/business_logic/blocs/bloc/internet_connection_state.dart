part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionState with _$InternetConnectionState {
  const factory InternetConnectionState.initial() = Unknown;
  const factory InternetConnectionState.connected() = Connected;
  const factory InternetConnectionState.disconnected() = Disconnected;
}
