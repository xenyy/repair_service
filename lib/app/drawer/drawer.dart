import 'package:device_repair/models/data_models/static_data/drawer_tile.dart';
import 'package:device_repair/services/app_repository/local_repo/static_data.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class EndDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DrawerTile> _drawerTiles = getDrawer(context, drawerIcon, drawerRoutes);
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildDrawerHeader(context),
          ListView(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ..._drawerTiles.getRange(0, _drawerTiles.length - 1).map(
                    (tile) => DrawersTile(
                      text: tile.text,
                      icon: tile.icon,
                      route: tile.route,
                    ),
                  ),
            ],
          ),
          Spacer(),
          DrawersTile(
            text: _drawerTiles.last.text,
            icon: _drawerTiles.last.icon,
            route: _drawerTiles.last.route,
          ),
        ],
      ),
    );
  }

  Widget buildDrawerHeader(BuildContext context) {
    return CustomDrawerHeader(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getScaledHeight(context, 0.02),
        horizontal: DeviceUtils.getScaledWidth(context, 0.05),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.05),
      ),
      child: Row(
        children: [
          CircleAvatar(radius: DeviceUtils.getScaledWidth(context, 0.1)),
          SizedBox(width: DeviceUtils.getScaledWidth(context, 0.05)),
          Text('UserName'),
        ],
      ),
    );
  }
}

class DrawersTile extends StatelessWidget {
  const DrawersTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.route,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final String route;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(text),
      onTap: () {
        DeviceUtils.closeDrawer(context);
        Navigator.pushNamed(context, route);
      },
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    Key? key,
    this.margin = const EdgeInsets.all(0),
    this.padding = const EdgeInsets.all(8.0),
    this.decoration,
    this.duration = const Duration(milliseconds: 250),
    this.curve = Curves.fastOutSlowIn,
    required this.child,
  }) : super(key: key);

  final EdgeInsets margin;
  final EdgeInsets padding;
  final BoxDecoration? decoration;
  final Duration duration;
  final Curve curve;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: padding.add(EdgeInsets.only(top: DeviceUtils.statusBarHeight(context))),
      decoration: decoration,
      duration: duration,
      curve: curve,
      child: child,
    );
  }
}
