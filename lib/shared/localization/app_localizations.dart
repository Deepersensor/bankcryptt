import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'app_localizations_en.arb.dart';

class AppLocalizations {
  static const List<Locale> supportedLocales = [
    Locale('en'),
    // Add other supported locales here
  ];

  static Future<AppLocalizations> load(Locale locale) {
    return Future(() => AppLocalizations());
  }

  String get appTitle {
    return Intl.message(
      'BankCryptt',
      name: 'appTitle',
      desc: 'Title for the application',
    );
  }

  // Add more localized strings here
}
