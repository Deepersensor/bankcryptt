
import 'package:bankcryptt/features/user_profiles/data/repositories/user_profile_repository_impl.dart';
import 'package:bankcryptt/features/user_profiles/data/data_sources/user_profile_remote_data_source.dart';
import 'package:bankcryptt/features/user_profiles/data/data_sources/user_profile_local_data_source.dart';
import 'package:bankcryptt/features/user_profiles/domain/repositories/user_profile_repository.dart';
// ...existing imports...

final sl = GetIt.instance;

void init() {
  // Repository
  sl.registerLazySingleton<UserProfileRepository>(
    () => UserProfileRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
    ),
  );

  // Data sources
  sl.registerLazySingleton<UserProfileRemoteDataSource>(
    () => UserProfileRemoteDataSourceImpl(),
  );

  sl.registerLazySingleton<UserProfileLocalDataSource>(
    () => UserProfileLocalDataSourceImpl(),
  );

  // ...existing code...
}