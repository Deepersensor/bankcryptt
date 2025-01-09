abstract class UserProfileRepository {
  Future<UserProfile> fetchUserProfile(String userId);
  Future<void> updateUserProfile(UserProfile profile);
  Future<void> deleteUserAccount(String userId);
  Future<void> verifyKYC(String userId, KYC kyc);
  Future<void> changeSettings(String userId, Settings settings);

  // ...existing code...
}
