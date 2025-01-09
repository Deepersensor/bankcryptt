import '../repositories/auth_repository.dart';

class RefreshToken {
  final AuthRepository repository;

  RefreshToken(this.repository);

  Future<String> execute() {
    return repository.refreshToken();
  }
}
