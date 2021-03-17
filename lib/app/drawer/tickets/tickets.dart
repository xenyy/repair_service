import 'package:device_repair/common_widgets/app_bar.dart';
import 'package:device_repair/common_widgets/icon_btn.dart';
import 'package:device_repair/common_widgets/status.dart';
import 'package:device_repair/routing/app_router.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class TicketsScreen extends StatelessWidget {
  static const String routeName = "/tickets";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.translate('ticket_screen')!,
        actions: [
          CustomIconButton(
            onPress: () {
              //Open filtering
            },
            icon: PhosphorIcons.funnel_simple,
          ),
        ],
      ),
      body: ListView(
        children: [
          TicketTile(),
          TicketTile(),
          TicketTile(),
        ],
      ),
    );
  }
}

class TicketTile extends StatelessWidget {
  const TicketTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.tDetails);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: DeviceUtils.getScaledHeight(context, 0.02),
          horizontal: DeviceUtils.getScaledWidth(context, 0.03),
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground.withOpacity(0.03),
          border: Border(
            bottom: BorderSide(color: Theme.of(context).scaffoldBackgroundColor, width: 2, style: BorderStyle.solid),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Status(),
            Text(
              'Ticket Title',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: DeviceUtils.getScaledHeight(context, 0.01)),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus id metus posuere, '
              'eleifend nibh semper, sagittis mauris. Duis tincidunt consectetur.',
              style: TextStyle(
                fontSize: 14,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
