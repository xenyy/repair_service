import 'dart:convert';
import 'dart:typed_data';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:device_repair/app_config/constants.dart';
import 'package:device_repair/common_widgets/c_widgets.dart';
import 'package:device_repair/routing/app_router.dart';
import 'package:device_repair/state/app_state.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Uint8List image = Base64Decoder().convert(Assets.appLogo);

class LogInScreen extends StatelessWidget {
  static const String routeName = "/login";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: DeviceUtils.getScaledHeight(context, 0.02),
          horizontal: DeviceUtils.getScaledWidth(context, 0.1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.appLogo,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                  height: 60,
                ),
                SizedBox(width: DeviceUtils.getScaledWidth(context, 0.05)),
                AutoSizeText(
                  AppConfigs.appName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 55,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                  maxLines: 2,
                ),
              ],
            ),
            SizedBox(height: DeviceUtils.getScaledHeight(context, 0.1)),
            LogInMethodBtn(
              text: AppLocalizations.of(context)!.translate('log_in_google')!,
              imageAsset: Assets.googleLogo,
              bkColor: AppColors.googleColor,
              onPress: () {
                context.read(userLogInNotifier).login(LogInMethods.google);
                _navigateToRoot(context);
              },
            ),
            SizedBox(height: DeviceUtils.getScaledHeight(context, 0.015)),
            LogInMethodBtn(
              text: AppLocalizations.of(context)!.translate('log_in_facebook')!,
              imageAsset: Assets.fbLogo,
              bkColor: AppColors.fbColor,
              onPress: () {
                context.read(userLogInNotifier).login(LogInMethods.fb);
                _navigateToRoot(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToRoot(BuildContext context) {
    Future.delayed(Duration(milliseconds: 0), () {
      Navigator.of(context).pushNamedAndRemoveUntil(AppRoutes.home, (Route<dynamic> route) => false);
    });
  }
}
