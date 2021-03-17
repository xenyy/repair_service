import 'package:flutter/material.dart';
import 'package:device_repair/services/app_repository/sharedprefs_repo/sharedpref_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeState extends StateNotifier<bool> {
  ThemeState(SharedPrefRepository repository, [bool? _darkMode])
      : this._sharedPrefRepository = repository,
        //initialize the theme light
        super(false) {
    init();
  }

  final SharedPrefRepository _sharedPrefRepository;

  Future init() async {
    state = await _sharedPrefRepository.isDarkMode;
  }

  Future changeBrightnessToDark(bool value) async {
    state = value;
    await _sharedPrefRepository.changeBrightnessToDark(value);
  }

  bool isPlatformDark(BuildContext context) => MediaQuery.platformBrightnessOf(context) == Brightness.dark;
}
