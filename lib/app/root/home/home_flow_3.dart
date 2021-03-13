import 'package:auto_size_text/auto_size_text.dart';
import 'package:device_repair/common_widgets/page_title_txt.dart';
import 'package:device_repair/models/data_models/help.dart';
import 'package:device_repair/services/app_repository/local_repo/static_data.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';

class FlowThree extends StatelessWidget {
  final PageController controller;

  const FlowThree({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Help> _help = getHelp(context, helpIcon);

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getScaledWidth(context, 0.05),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PageTitle(
            text: AppLocalizations.of(context).translate('home_third_title'),
          ),
          Expanded(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: [
                ..._help.map(
                  (help) => HelpCard(help: help),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HelpCard extends StatelessWidget {
  const HelpCard({
    Key key,
    @required this.help,
  }) : super(key: key);

  final Help help;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getScaledHeight(context, 0.03),
        horizontal: DeviceUtils.getScaledWidth(context, 0.05),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.only(bottom: DeviceUtils.getScaledHeight(context, 0.02)),
      height: DeviceUtils.getScaledHeight(context, 0.25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            help.icon,
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.8),
            size: 40,
          ),
          AutoSizeText.rich(
            TextSpan(
              text: help.description.split('@').first,
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.7),
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: '\n' + help.description.split('@').last,
                  style: TextStyle(
                    fontSize: 14,
                    color: Theme.of(context).colorScheme.onBackground.withOpacity(0.3),
                  ),
                ),
              ],
            ),
            style: TextStyle(fontSize: 20),
            minFontSize: 5,
          )
        ],
      ),
    );
  }
}
