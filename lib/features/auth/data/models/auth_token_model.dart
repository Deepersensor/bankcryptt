import '../../domain/entities/auth_token.dart';

class AuthTokenModel extends AuthToken {
  AuthTokenModel({
    required String token,
    required DateTime expiry,
  }) : super(token: token, expiry: expiry);

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) {
    return AuthTokenModel(
      token: json['token'],
      expiry: DateTime.parse(json['expiry']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'token': token,
      'expiry': expiry.toIso8601String(),
    };
  }
}
