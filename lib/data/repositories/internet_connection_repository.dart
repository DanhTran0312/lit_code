import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:lit_code/business_logic/blocs/bloc/internet_connection_bloc.dart';

class InternetConnectionRepository {
  static void observeConnection() {
    Connectivity().onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.none) {
        InternetConnectionBloc().add(const ConnectionChanged(false));
      } else {
        InternetConnectionBloc().add(const ConnectionChanged(true));
      }
    });
  }
}
