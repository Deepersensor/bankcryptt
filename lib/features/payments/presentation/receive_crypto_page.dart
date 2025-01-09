import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class ReceiveCryptoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.receiveCrypto),
      ),
      body: Center(
        child: Text(
          'Receive Crypto Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
