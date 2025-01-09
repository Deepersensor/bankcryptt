import 'package:flutter/material.dart';
import '../../../shared/localization/app_localizations.dart';

class SendCryptoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations();
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.sendCrypto),
      ),
      body: Center(
        child: Text(
          'Send Crypto Page',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
