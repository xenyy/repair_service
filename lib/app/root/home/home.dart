import 'package:device_repair/app/drawer/drawer.dart';
import 'package:device_repair/common_widgets/app_bar.dart';
import 'package:device_repair/common_widgets/icon_btn.dart';
import 'package:device_repair/state/app_state.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends ConsumerWidget {
  static const String routeName = "/home";

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final controller = watch(pageControllerNotifier.state);
    final pages = watch(pageControllerNotifier).pages;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return WillPopScope(
      onWillPop: () async {
        if (controller.page == 0.0) {
          return true;
        } else {
          controller.previousPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
          return false;
        }
      },
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomAppBar(
          title: '',
          bkColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomIconButton(
                onPress: () {
                  DeviceUtils.openDrawer(context, _scaffoldKey);
                },
                icon: PhosphorIcons.user_circle,
              ),
            ),
          ],
        ),
        endDrawer: EndDrawer(),
        body: buildPages(context, controller, pages),
      ),
    );
  }

  Stack buildPages(BuildContext context, PageController controller, List<Widget> pages) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            left: DeviceUtils.getScaledWidth(context, 0.05),
            bottom: DeviceUtils.getScaledWidth(context, 0.02),
          ),
          child: SmoothPageIndicator(
            controller: controller,
            count: pages.length,
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
          controller: controller,
          itemCount: pages.length,
          itemBuilder: (BuildContext context, int index) {
            return pages[index];
          },
        ),
      ],
    );
  }
}
