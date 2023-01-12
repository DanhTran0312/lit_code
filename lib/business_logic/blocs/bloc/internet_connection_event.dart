part of 'internet_connection_bloc.dart';

@freezed
class InternetConnectionEvent with _$InternetConnectionEvent {
  const factory InternetConnectionEvent.observeConnection() = ObserveConnection;
  // ignore: avoid_positional_boolean_parameters
  const factory InternetConnectionEvent.connectionChanged(bool isConnected) =
      ConnectionChanged;
}
