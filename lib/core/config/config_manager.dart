import 'environment.dart';
import 'secrets.dart';

class ConfigManager {
  final Environment environment;

  ConfigManager(this.environment);

  String get apiKey {
    return Secrets.apiKey;
  }

  // ...existing code...
}
