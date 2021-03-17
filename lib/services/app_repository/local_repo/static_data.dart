import 'package:device_repair/app_config/constants.dart';
import 'package:device_repair/models/data_models/static_data/device.dart';
import 'package:device_repair/models/data_models/static_data/drawer_tile.dart';
import 'package:device_repair/models/data_models/static_data/help.dart';
import 'package:device_repair/models/data_models/static_data/issue.dart';
import 'package:device_repair/models/data_models/static_data/settings_tile.dart';
import 'package:device_repair/routing/app_router.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

final regExp = RegExp(r'(?:\[)?(\[[^\]]*?\](?:,?))(?:\])?');

List<IconData> deviceIcon = [
  PhosphorIcons.device_mobile,
  PhosphorIcons.desktop,
  PhosphorIcons.laptop,
  PhosphorIcons.monitor,
  PhosphorIcons.device_tablet,
  PhosphorIcons.game_controller,
  PhosphorIcons.printer,
  PhosphorIcons.headset,
  PhosphorIcons.screencast,
  PhosphorIcons.lightning,
  Icons.router_outlined,
  Icons.bug_report_outlined,
];

List<Device> getRepairDevice(context, List<IconData> deviceIcon) {
  List<Device> devices = [];

  for (int i = 0; i < deviceIcon.length; i++) {
    final deviceName = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['devices']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\]]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    devices.add(Device(deviceName, deviceIcon[i]));
  }
  return devices;
}

List<IconData> issueIcon = [
  PhosphorIcons.power,
  PhosphorIcons.wrench,
  PhosphorIcons.battery_charging_vertical,
  PhosphorIcons.disc,
  PhosphorIcons.cloud_slash,
  PhosphorIcons.wifi_x,
  PhosphorIcons.warning_circle,
];

List<Issue> getIssue(context, List<IconData> issueIcon) {
  List<Issue> issues = [];

  for (int i = 0; i < issueIcon.length; i++) {
    final issueName = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['device_issues']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\]]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    issues.add(Issue(issueName, issueIcon[i]));
  }
  return issues;
}

List<IconData> helpIcon = [
  PhosphorIcons.phone,
  PhosphorIcons.chat_circle_dots,
  PhosphorIcons.wrench,
];

List<Help> getHelp(context, List<IconData> helpIcon) {
  List<Help> helps = [];

  for (int i = 0; i < helpIcon.length; i++) {
    final helpDesc = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['help_method']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\],]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    helps.add(Help(helpDesc, helpIcon[i]));
  }
  return helps;
}

List<IconData> drawerIcon = [
  PhosphorIcons.sticker,
  PhosphorIcons.chat_circle_text,
  PhosphorIcons.gear_six,
];

List<String> drawerRoutes = [
  AppRoutes.tickets,
  AppRoutes.chats,
  AppRoutes.setts,
];

List<DrawerTile> getDrawer(context, List<IconData> drawerIcon, List<String> drawerRoutes) {
  List<DrawerTile> drawer = [];

  for (int i = 0; i < drawerIcon.length; i++) {
    final tileText = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['drawer']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\]]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    drawer.add(DrawerTile(drawerIcon[i], tileText, drawerRoutes[i]));
  }

  return drawer;
}

List<String> getSettingsTitle(context) {
  List<String> settings = [];

  for (int i = 0; i < 5; i++) {
    final title = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['settings_titles']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\]]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .replaceAll(" ", "")
        .split(',')[i];
    settings.add(title);
  }
  return settings;
}

List<IconData> settsIcon = [
  PhosphorIcons.user_circle_gear,
  PhosphorIcons.moon,
  PhosphorIcons.globe_hemisphere_west,
  PhosphorIcons.article,
  PhosphorIcons.article,
  PhosphorIcons.article,
  PhosphorIcons.question,
  Icons.bug_report_outlined,
  PhosphorIcons.code,
];

List<String> settsRoutes = [
  AppRoutes.aSetts,
  "",
  "",
  "",
  "",
  "",
  "",
  "",
  "",
];

List<TileType> tileType = [
  TileType.route,
  TileType.toggle,
  TileType.dialog,
  TileType.route,
  TileType.route,
  TileType.route,
  TileType.route,
  TileType.route,
  TileType.none,
];

List<SettsTile> getSettsTile(context, List<IconData> settsIcon, List<String> settsRoutes, List<TileType> tileType) {
  List<SettsTile> tiles = [];

  for (int i = 0; i < settsIcon.length; i++) {
    final tileText = regExp
        .allMatches(AppLocalizations.of(context)!.localizedStrings!['settings_tiles']!)
        .map((m) => m.group(1))
        .map((item) => item!.replaceAll(RegExp(r'[\[\]]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    tiles.add(SettsTile(settsIcon[i], tileText, settsRoutes[i], tileType[i]));
  }

  return tiles;
}
