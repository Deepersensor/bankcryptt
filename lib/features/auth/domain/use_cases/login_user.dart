import '../../data/models/user_model.dart';
import '../entities/user.dart';


class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<User> execute(String email, String password) {
    return repository.login(email, password);
  }
}
