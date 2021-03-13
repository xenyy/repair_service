import 'package:device_repair/models/data_models/device.dart';
import 'package:device_repair/models/data_models/help.dart';
import 'package:device_repair/models/data_models/issue.dart';
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
        .allMatches(AppLocalizations.of(context).localizedStrings['devices'])
        .map((m) => m.group(1))
        .map((item) => item.replaceAll(RegExp(r'[\[\]]'), ''))
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
        .allMatches(AppLocalizations.of(context).localizedStrings['device_issues'])
        .map((m) => m.group(1))
        .map((item) => item.replaceAll(RegExp(r'[\[\]]'), ''))
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
        .allMatches(AppLocalizations.of(context).localizedStrings['help_method'].toString())
        .map((m) => m.group(1))
        .map((item) => item.replaceAll(RegExp(r'[\[\],]'), ''))
        .toList()
        .toString()
        .replaceAll(RegExp(r'[\[\]]'), '')
        .split(',')[i];
    helps.add(Help(helpDesc, helpIcon[i]));
  }
  return helps;
}
