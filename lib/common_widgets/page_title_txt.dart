import 'package:device_repair/utils/device/device_utils.dart';
import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({
    Key key,
    @required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: DeviceUtils.getScaledHeight(context, 0.02),
        top: DeviceUtils.getScaledHeight(context, 0.04),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
