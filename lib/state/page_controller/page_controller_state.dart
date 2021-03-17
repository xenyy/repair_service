import 'package:device_repair/app/root/home/home_flow_1.dart';
import 'package:device_repair/app/root/home/home_flow_2.dart';
import 'package:device_repair/app/root/home/home_flow_3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PageControllerState extends StateNotifier<PageController> {
  PageControllerState([PageController? _controller]) : super(_controller!) {
    init();
  }

  void init() {
    state = PageController();
  }

  List<Widget> pages = [
    FlowOne(),
    FlowTwo(),
    FlowThree(),
  ];
}
