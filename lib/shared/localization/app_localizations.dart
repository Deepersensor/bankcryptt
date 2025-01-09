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

  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: 'Settings page title',
    );
  }

  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: 'Home page title',
    );
  }

  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: 'Profile page title',
    );
  }

  String get virtualCard {
    return Intl.message(
      'Virtual Card',
      name: 'virtualCard',
      desc: 'Virtual Card page title',
    );
  }

  String get sendCrypto {
    return Intl.message(
      'Send Crypto',
      name: 'sendCrypto',
      desc: 'Send Crypto page title',
    );
  }

  String get receiveCrypto {
    return Intl.message(
      'Receive Crypto',
      name: 'receiveCrypto',
      desc: 'Receive Crypto page title',
    );
  }

  // Add more localized strings here
}
