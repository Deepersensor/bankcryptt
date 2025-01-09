import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class VirtualCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.virtualCard),
      ),
      body: Center(
        child: Text(
          'Virtual Card Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
