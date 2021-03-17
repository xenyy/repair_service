import 'package:device_repair/utils/device/device_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class Status extends StatelessWidget {
  const Status({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: DeviceUtils.getScaledHeight(context, 0.03)),
      child: Row(
        children: [
          Text('status'),
          SizedBox(
            width: DeviceUtils.getScaledWidth(context, 0.02),
          ),
          Icon(
            PhosphorIcons.circle_fill,
            size: 12,
          ),
        ],
      ),
    );
  }
}
