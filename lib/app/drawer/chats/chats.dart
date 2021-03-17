import 'package:device_repair/common_widgets/app_bar.dart';
import 'package:device_repair/utils/locale/app_localization.dart';
import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  static const String routeName = "/chats";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppLocalizations.of(context)!.translate('chat_screen')!,
      ),
    );
  }
}
