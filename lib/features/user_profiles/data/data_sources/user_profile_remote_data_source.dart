
abstract class UserProfileRemoteDataSource {
  Future<UserProfile> fetchUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
  
  // ...existing code...
}