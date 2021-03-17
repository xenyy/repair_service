import 'package:flutter/material.dart';

/// Helper class for device related operations.

class DeviceUtils {
  static hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static openDrawer(BuildContext context, GlobalKey<ScaffoldState>? _scaffoldKey) {
    _scaffoldKey!.currentState!.openEndDrawer();
  }

  static closeDrawer(BuildContext context) {
    Navigator.of(context).pop();
  }

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// orientation
  ///
  static double getScaledSize(BuildContext context, double scale) =>
      scale *
      (MediaQuery.of(context).orientation == Orientation.portrait
          ? MediaQuery.of(context).size.width
          : MediaQuery.of(context).size.height);

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// width
  ///
  static double getScaledWidth(BuildContext context, double scale) => scale * MediaQuery.of(context).size.width;

  ///
  /// accepts a double [scale] and returns scaled sized based on the screen
  /// height
  ///
  static double getScaledHeight(BuildContext context, double scale) => scale * MediaQuery.of(context).size.height;

  static double statusBarHeight(BuildContext context) => MediaQuery.of(context).padding.top;
}
