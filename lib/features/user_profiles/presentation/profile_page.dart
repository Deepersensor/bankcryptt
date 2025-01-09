import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      body: Center(
        child: Text(
          localizations.profile,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
