import 'package:shared_preferences/shared_preferences.dart';

import '../models/auth_token_model.dart';

abstract class AuthLocalDataSource {
  Future<void> cacheAuthToken(AuthTokenModel token);
  Future<AuthTokenModel> getLastAuthToken();
  Future<void> clearAuthToken();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final SharedPreferences sharedPreferences;

  AuthLocalDataSourceImpl({required this.sharedPreferences});

  static const String AUTH_TOKEN_KEY = 'AUTH_TOKEN';

  @override
  Future<void> cacheAuthToken(AuthTokenModel token) {
    return sharedPreferences.setString(AUTH_TOKEN_KEY, token.toJson().toString());
  }

  @override
  Future<AuthTokenModel> getLastAuthToken() {
    final jsonString = sharedPreferences.getString(AUTH_TOKEN_KEY);
    if (jsonString != null) {
      return Future.value(AuthTokenModel.fromJson(json.decode(jsonString)));
    } else {
      throw Exception('No Auth Token cached');
    }
  }

  @override
  Future<void> clearAuthToken() {
    return sharedPreferences.remove(AUTH_TOKEN_KEY);
  }
}
