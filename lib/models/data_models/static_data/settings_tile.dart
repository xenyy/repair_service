import 'package:device_repair/app_config/constants.dart';
import 'package:flutter/material.dart';

class SettsTile {
  final IconData icon;
  final String text;
  final String route;
  final TileType type;

  SettsTile(
    this.icon,
    this.text,
    this.route,
    this.type,
  );
}
