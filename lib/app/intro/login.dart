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
    precacheImage(AssetImage(Assets.appLogo), context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.language_rounded),
            onPressed: () {
              _buildLanguageDialog(context);
            },
            color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
            splashRadius: 27,
          ),
          Consumer(
            builder: (context, watch, child) {
              final themeIsDark = watch(themeNotifier.state);
              final themeNotify = context.read(themeNotifier);
              return IconButton(
                icon: themeIsDark ? Icon(Icons.wb_sunny_rounded) : Icon(Icons.nightlight_round),
                color: Theme.of(context).colorScheme.onBackground.withOpacity(0.5),
                onPressed: () {
                  //changes theme to the opposite of what it was
                  themeNotify.changeBrightnessToDark(!themeIsDark);
                },
                splashRadius: 27,
              );
            },
          ),
        ],
      ),
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
              text: AppLocalizations.of(context).translate('log_in_google'),
              imageAsset: Assets.googleLogo,
              bkColor: AppColors.googleColor,
              onPress: () {
                context.read(userLogInNotifier).login(LogInMethods.google);
                _navigateToRoot(context);
              },
            ),
            SizedBox(height: DeviceUtils.getScaledHeight(context, 0.015)),
            LogInMethodBtn(
              text: AppLocalizations.of(context).translate('log_in_facebook'),
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

  _showDialog<T>({BuildContext context, Widget child}) {
    showDialog<T>(
      context: context,
      builder: (BuildContext context) => child,
    ).then<void>((T value) {
      // The value passed to Navigator.pop() or null.
    });
  }

  _buildLanguageDialog(BuildContext context) {
    _showDialog<String>(
      context: context,
      child: Consumer(
        builder: (context, watch, child) {
          final language = watch(langNotifier.state);
          final locales = context.read(langNotifier);
          return SimpleDialog(
            title: Text(
              AppLocalizations.of(context).translate('home_choose_language'),
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1.color,
                fontSize: 16.0,
              ),
            ),
            children: locales.supportedLanguages
                .map(
                  (object) => ListTile(
                    dense: true,
                    contentPadding: EdgeInsets.all(0.0),
                    title: Text(
                      object.language,
                      style: TextStyle(
                        color: language == object.locale
                            ? Theme.of(context).textTheme.bodyText1.color
                            : Theme.of(context).iconTheme.color.withOpacity(0.3),
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pop();
                      // change user language based on selected locale
                      locales.changeLanguage(object.locale);
                    },
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}

class SimpleDialogItem extends StatelessWidget {
  const SimpleDialogItem({
    Key key,
    this.icon,
    this.color,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  final IconData icon;
  final Color color;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return SimpleDialogOption(
      onPressed: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 36.0, color: color),
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 16.0),
            child: Text(text),
          ),
        ],
      ),
    );
  }
}
