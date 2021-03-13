import 'package:device_repair/app/root/home/home_flow_1.dart';
import 'package:device_repair/app/root/home/home_flow_3.dart';
import 'package:device_repair/app/root/home/home_flow_2.dart';
import 'package:device_repair/routing/app_router.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context) {
    final _controller = PageController();
    List<Widget> _pages = [
      FlowOne(controller: _controller),
      FlowTwo(controller: _controller),
      FlowThree(controller: _controller),
    ];

    return WillPopScope(
      onWillPop: () async {
        if (_controller.page == 0.0) {
          return true;
        } else {
          _controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
          return false;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.profile);
                },
                splashRadius: 24,
                icon: Icon(
                  PhosphorIcons.user_circle_bold,
                  color: Theme.of(context).colorScheme.onBackground,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(
                left: DeviceUtils.getScaledWidth(context, 0.05),
                bottom: DeviceUtils.getScaledWidth(context, 0.02),
              ),
              child: SmoothPageIndicator(
                controller: _controller,
                count: _pages.length,
                effect: WormEffect(
                  activeDotColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.9),
                  dotColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.4),
                  dotWidth: 12,
                  dotHeight: 12,
                ),
              ),
            ),
            PageView.builder(
              clipBehavior: Clip.none,
              physics: NeverScrollableScrollPhysics(),
              controller: _controller,
              itemCount: _pages.length,
              itemBuilder: (BuildContext context, int index) {
                return _pages[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
