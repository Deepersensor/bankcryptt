import 'package:bankcryptt/features/user_profiles/domain/entities/user_profile.dart';
import 'package:bankcryptt/features/user_profiles/domain/repositories/user_profile_repository.dart';
import 'package:bankcryptt/features/user_profiles/data/data_sources/user_profile_remote_data_source.dart';
import 'package:bankcryptt/features/user_profiles/data/data_sources/user_profile_local_data_source.dart';

class UserProfileRepositoryImpl implements UserProfileRepository {
  final UserProfileRemoteDataSource remoteDataSource;
  final UserProfileLocalDataSource localDataSource;

  UserProfileRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<UserProfile> fetchUserProfile(String userId) async {
    // Fetch from remote
    final remoteProfile = await remoteDataSource.fetchUserProfile(userId);
    // Cache locally
    await localDataSource.cacheUserProfile(remoteProfile);
    return remoteProfile;
    // ...existing code...
  }

  @override
  Future<void> updateUserProfile(UserProfile profile) async {
    await remoteDataSource.updateUserProfile(profile);
    await localDataSource.cacheUserProfile(profile);
    // ...existing code...
  }

  // Implement other methods similarly...
}
