
import 'package:bankcryptt/features/user_profiles/data/data_sources/user_profile_local_data_source.dart';
import 'package:bankcryptt/features/user_profiles/domain/entities/user_profile.dart';

class UserProfileLocalDataSourceImpl implements UserProfileLocalDataSource {
  @override
  Future<UserProfile> fetchUserProfile(String userId) async {
    // Implement local fetch logic
    // ...existing code...
  }

  @override
  Future<void> cacheUserProfile(UserProfile profile) async {
    // Implement caching logic
    // ...existing code...
  }

  // ...existing code...
}