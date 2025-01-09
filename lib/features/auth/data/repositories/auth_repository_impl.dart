import '../../domain/entities/user.dart';

import '../../domain/entities/auth_token.dart';
import '../../domain/repositories/auth_repository.dart';
import '../data_sources/remote/auth_remote_data_source.dart';
import '../data_sources/local/auth_local_data_source.dart';
import '../models/user_model.dart';
import '../models/auth_token_model.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<User> login(String email, String password) async {
    final authToken = await remoteDataSource.login(email, password);
    await localDataSource.cacheAuthToken(authToken);
    // Assume the API returns user data along with token
    // You might need to adjust based on actual API response
    return UserModel(id: '1', name: 'John Doe', email: email);
  }

  @override
  Future<void> logout() async {
    await localDataSource.clearAuthToken();
    // Add any additional logout logic if necessary
  }

  @override
  Future<AuthToken> getAuthToken() async {
    return await localDataSource.getLastAuthToken();
  }
}
