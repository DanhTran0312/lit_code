import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lit_code/data/repositories/internet_connection_repository.dart';

part 'internet_connection_event.dart';
part 'internet_connection_state.dart';
part 'internet_connection_bloc.freezed.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(const Unknown()) {
    on<ObserveConnection>((event, emit) => _observe);
    on<ConnectionChanged>((event, emit) => _connectionChanged);
  }

  void _observe(event, emit) {
    InternetConnectionRepository.observeConnection();
  }

  void _connectionChanged(
    ConnectionChanged event,
    Emitter<InternetConnectionState> emit,
  ) {
    emit(
      event.isConnected ? const Connected() : const Disconnected(),
    );
  }
}
