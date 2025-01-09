import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../shared/localization/app_localizations.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      body: Center(
        child: Text(
          localizations.home,
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
