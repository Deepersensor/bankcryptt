import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.appTitle),
      ),
      body: Center(
        child: Text(
          'Register Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
