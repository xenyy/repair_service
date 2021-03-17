import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Color? bkColor;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.bkColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      backgroundColor: bkColor ?? Theme.of(context).colorScheme.onBackground.withOpacity(0.02),
      iconTheme: IconThemeData(color: Theme.of(context).colorScheme.onBackground),
      actions: actions,
    );
  }

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }
}
