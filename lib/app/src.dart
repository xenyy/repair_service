import 'package:device_repair/app/root/home/home.dart';
import 'package:flutter/material.dart';
import 'package:device_repair/app/intro/login.dart';
import 'package:device_repair/state/app_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Source extends ConsumerWidget {
  static const String routeName = "/";
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final state = watch(sourceScreenNotifier.state);
    return state.when(
      loading: () => Scaffold(body: const Center(child: CircularProgressIndicator())),
      notLogged: () => LogInScreen(),
      logged: () => HomeScreen(),
    );
  }
}
