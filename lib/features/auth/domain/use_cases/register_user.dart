import '../repositories/auth_repository.dart';
import '../entities/user.dart';

class RegisterUser {
  final AuthRepository repository;

  RegisterUser(this.repository);

  Future<User> execute(String email, String password, String username) {
    return repository.register(email, password, username);
  }
}
