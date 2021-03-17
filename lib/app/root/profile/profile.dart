import 'package:device_repair/state/app_state.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends StatelessWidget {
  static const String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
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
    );
  }

  _showDialog<T>({BuildContext? context, Widget? child}) {
    showDialog<T>(
      context: context!,
      builder: (BuildContext context) => child!,
    ).then<void>((T? value) {
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
              AppLocalizations.of(context)!.translate('home_choose_language')!,
              style: TextStyle(
                color: Theme.of(context).textTheme.bodyText1!.color,
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
                            ? Theme.of(context).textTheme.bodyText1!.color
                            : Theme.of(context).iconTheme.color!.withOpacity(0.3),
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
