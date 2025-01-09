
abstract class UserProfileLocalDataSource {
  Future<UserProfile> fetchUserProfile(String userId);
  Future<void> cacheUserProfile(UserProfile profile);
  
  // ...existing code...
}