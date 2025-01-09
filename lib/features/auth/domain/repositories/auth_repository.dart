abstract class AuthRepository {
  Future<User> login(String email, String password);
  Future<void> logout();
  Future<AuthToken> getAuthToken();
}
