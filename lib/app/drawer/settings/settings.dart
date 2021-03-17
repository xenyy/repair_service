import 'package:device_repair/app_config/constants.dart';
import 'package:device_repair/common_widgets/app_bar.dart';
import 'package:device_repair/models/data_models/static_data/settings_tile.dart';
import 'package:device_repair/services/app_repository/local_repo/static_data.dart';
import 'package:device_repair/state/app_state.dart';
import 'package:device_repair/utils/device/device_utils.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingsScreen extends StatelessWidget {
  static const String routeName = "/settings";
  @override
  Widget build(BuildContext context) {
    List<String> _settsTitle = getSettingsTitle(context);
    List<SettsTile> _settsTiles = getSettsTile(context, settsIcon, settsRoutes, tileType);

    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.translate('setts_screen')!,
      ),
      body: ListView(
        children: [
          SettsSection(
            settsTitle: _settsTitle[0],
            settsTiles: _settsTiles,
            init: 0,
            end: 1,
          ),
          SettsSection(
            settsTitle: _settsTitle[1],
            settsTiles: _settsTiles,
            init: 1,
            end: 3,
          ),
          SettsSection(
            settsTitle: _settsTitle[2],
            settsTiles: _settsTiles,
            init: 3,
            end: 7,
          ),
          SettsSection(
            settsTitle: _settsTitle[3],
            settsTiles: _settsTiles,
            init: 7,
            end: 8,
          ),
          SettsSection(
            settsTitle: _settsTitle[4],
            settsTiles: _settsTiles,
            init: 8,
            end: 9,
          ),
        ],
      ),
    );
  }
}

class SettsSection extends StatelessWidget {
  const SettsSection({
    Key? key,
    required this.settsTitle,
    required this.settsTiles,
    required this.init,
    required this.end,
  }) : super(key: key);

  final String settsTitle;
  final List<SettsTile> settsTiles;
  final int init;
  final int end;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SettsTitle(settsTitle: settsTitle),
        SettsLists(
          settsTiles: settsTiles,
          init: init,
          end: end,
        ),
      ],
    );
  }
}

class SettsLists extends StatelessWidget {
  const SettsLists({
    Key? key,
    required this.settsTiles,
    required this.init,
    required this.end,
  }) : super(key: key);

  final List<SettsTile> settsTiles;
  final int init;
  final int end;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: [
        ...settsTiles
            .map(
              (sett) => ListTile(
                tileColor: Theme.of(context).colorScheme.onBackground.withOpacity(0.02),
                leading: Icon(sett.icon),
                title: Text(sett.text),
                trailing: getTrailing(sett.type, context),
                onTap: () {
                  sett.route.length != 0 ? Navigator.pushNamed(context, sett.route) : null;
                },
              ),
            )
            .toList()
            .getRange(init, end),
      ],
    );
  }

  Widget getTrailing(TileType type, context) {
    switch (type) {
      case TileType.route:
        return Icon(PhosphorIcons.arrow_right);
      case TileType.toggle:
        return Consumer(
          builder: (context, watch, child) {
            final themeIsDark = watch(themeNotifier.state);
            final themeNotify = context.read(themeNotifier);
            return DefaultSwitch(
              onChange: (_) {
                //changes theme to the opposite of what it was
                themeNotify.changeBrightnessToDark(!themeIsDark);
              },
              value: themeIsDark,
            );
          },
        );
      case TileType.dialog:
        return DialogShowBtn(
          onPress: () {
            _buildLanguageDialog(context);
          },
        );
      case TileType.none:
        return Container(width: 1);
    }
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

class DialogShowBtn extends StatelessWidget {
  const DialogShowBtn({
    Key? key,
    required this.onPress,
    this.icon = PhosphorIcons.caret_down,
  }) : super(key: key);

  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      splashRadius: 24,
      icon: Icon(icon),
      onPressed: () => onPress,
    );
  }
}

class DefaultSwitch extends StatelessWidget {
  const DefaultSwitch({
    Key? key,
    required this.onChange,
    this.value = false,
    this.activeTack,
    this.active,
  }) : super(key: key);

  final Function(bool) onChange;
  final Color? activeTack;
  final Color? active;
  final bool value;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: value,
      onChanged: onChange,
      activeTrackColor: activeTack,
      activeColor: active,
    );
  }
}

class SettsTitle extends StatelessWidget {
  const SettsTitle({
    Key? key,
    required this.settsTitle,
  }) : super(key: key);

  final String settsTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getScaledHeight(context, 0.01),
        horizontal: DeviceUtils.getScaledWidth(context, 0.02),
      ),
      child: Text(
        settsTitle,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
