import 'package:get_it/get_it.dart';
import '../network/api_client.dart';
import '../network/connectivity_service.dart';

final GetIt locator = GetIt.instance;

void setupServiceLocator() {
  locator.registerLazySingleton<ApiClient>(() => ApiClient());
  locator.registerLazySingleton<ConnectivityService>(() => ConnectivityService());
  // Register other services here
}

// ...existing code...
