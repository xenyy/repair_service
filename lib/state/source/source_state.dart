import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:device_repair/models/state_models/source_state_model.dart';

class SourceScreenNotifier extends StateNotifier<SourceState> {
  SourceScreenNotifier(this.read) : super(const SourceState.loading()) {
    init();
  }

  final Reader read;

  void init() async {
    await Future.delayed(Duration(seconds: 2)); //for testing only
    //bool logged = await read(userLogInNotifier).isLoggedIn;
    bool logged = false;
    logged ? state = SourceState.logged() : state = SourceState.notLogged();
  }
}
