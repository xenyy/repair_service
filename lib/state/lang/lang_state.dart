import 'dart:io';

import 'package:device_repair/models/language/language_model.dart';
import 'package:device_repair/services/app_repository/sharedprefs_repo/sharedpref_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LanguageState extends StateNotifier<String> {
  LanguageState(SharedPrefRepository repository, [String? lang])
      : this._sharedPrefRepository = repository,
        //initialize the language with the device locale
        super(Platform.localeName.split("_").first) {
    init();
  }

  final SharedPrefRepository _sharedPrefRepository;

  void init() async {
    state = await _sharedPrefRepository.currentLanguage;
  }

  List<Language> supportedLanguages = [
    Language(code: 'US', locale: 'en', language: 'English'),
    Language(code: 'ES', locale: 'es', language: 'Español'),
  ];

  void changeLanguage(String value) {
    state = value;
    _sharedPrefRepository.changeLanguage(value).then((_) {
      // write more logic here if needed
    });
  }

  String getCode() {
    var code;
    if (state == 'en') {
      code = "US";
    } else if (state == 'es') {
      code = "ES";
    }
    return code;
  }

  String getLanguage() {
    return supportedLanguages[supportedLanguages.indexWhere((language) => language.locale == state)].language;
  }
}
