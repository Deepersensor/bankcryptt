import 'config_manager.dart';
import 'environment.dart';

class AppConfig {
  late final ConfigManager configManager;

  void initialize(Environment environment) {
    configManager = ConfigManager(environment);
    // ...existing code...
  }

  // ...existing code...
}
