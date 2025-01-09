import 'package:flutter/material.dart';
import 'shared/widgets/bottom_nav_bar.dart';
import 'shared/widgets/app_bar_with_actions.dart';
import 'shared/styles/theme.dart';
import 'shared/localization/app_localizations.dart';
import 'shared/localization/locale_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/home/presentation/home_page.dart';
import 'features/user_profiles/presentation/settings_page.dart';
import 'features/user_profiles/presentation/profile_page.dart';
import 'features/payments/presentation/virtual_card_page.dart';
import 'features/payments/presentation/send_crypto_page.dart';
import 'features/payments/presentation/receive_crypto_page.dart';
// Import additional pages if necessary

// ...existing code...

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _currentIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      // Handle navigation based on index
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    SettingsPage(),
    ProfilePage(),
    // Add more pages as needed
    VirtualCardPage(),
    SendCryptoPage(),
    ReceiveCryptoPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LocaleProvider(),
      child: Consumer<LocaleProvider>(
        builder: (context, localeProvider, child) {
          return MaterialApp(
            title: 'BankCryptt',
            theme: AppTheme.lightTheme,
            locale: localeProvider.locale,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: [
              AppLocalizations.delegate, // Uncommented
              GlobalMaterialLocalizations.delegate, // Uncommented
              GlobalWidgetsLocalizations.delegate, // Uncommented
              GlobalCupertinoLocalizations.delegate, // Uncommented
            ],
            home: Scaffold(
              appBar: AppBarWithActions(
                title: 'BankCryptt',
                actions: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // Handle settings action
                    },
                  ),
                ],
              ),
              body: _pages[_currentIndex], // Replaced placeholder with actual widget
              bottomNavigationBar: BottomNavBar(
                currentIndex: _currentIndex,
                onTap: _onTabTapped,
              ),
            ),
          );
        },
      ),
    );
  }
}
// ...existing code...
