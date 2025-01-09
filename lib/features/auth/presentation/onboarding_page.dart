import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
      ),
      body: Center(
        child: Text(
          'Onboarding Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
