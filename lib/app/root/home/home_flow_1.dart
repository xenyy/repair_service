import 'package:device_repair/common_widgets/c_widgets.dart';
import 'package:device_repair/models/data_models/static_data/device.dart';
import 'package:device_repair/services/app_repository/local_repo/static_data.dart';
import 'package:device_repair/state/app_state.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlowOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Device> _devices = getRepairDevice(context, deviceIcon);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: DeviceUtils.getScaledWidth(context, 0.05),
            top: DeviceUtils.getScaledHeight(context, 0.04),
          ),
          child: Text(
            AppLocalizations.of(context)!.translate('home_greetings')! + ', User',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.6),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: DeviceUtils.getScaledWidth(context, 0.05),
            right: DeviceUtils.getScaledWidth(context, 0.05),
          ),
          child: PageTitle(
            text: AppLocalizations.of(context)!.translate('home_first_title')!,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
              left: DeviceUtils.getScaledWidth(context, 0.08),
              right: DeviceUtils.getScaledWidth(context, 0.08),
              top: DeviceUtils.getScaledWidth(context, 0.1),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onBackground.withOpacity(0.05),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
            child: GridView(
              physics: BouncingScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              children: [
                ..._devices.map(
                  (device) => DeviceCard(
                    device: device,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DeviceCard extends StatelessWidget {
  const DeviceCard({
    Key? key,
    required this.device,
  }) : super(key: key);

  final Device device;

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, watch, child) {
      final controller = watch(pageControllerNotifier.state);
      return GestureDetector(
        onTap: () {
          print(device.name);
          //save device checked
          controller.nextPage(duration: Duration(milliseconds: 500), curve: Curves.ease);
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                device.icon,
                size: 60,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
              ),
              Text(
                device.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
