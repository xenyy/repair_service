import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.onPress,
    required this.icon,
  }) : super(key: key);

  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: IconButton(
        onPressed: () => onPress,
        splashRadius: 24,
        icon: Icon(
          icon,
          size: 30,
        ),
      ),
    );
  }
}
