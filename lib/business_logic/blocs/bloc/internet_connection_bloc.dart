import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'internet_connection_event.dart';
part 'internet_connection_state.dart';
part 'internet_connection_bloc.freezed.dart';

class InternetConnectionBloc
    extends Bloc<InternetConnectionEvent, InternetConnectionState> {
  InternetConnectionBloc() : super(const Unknown()) {
    on<InternetConnectionEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
