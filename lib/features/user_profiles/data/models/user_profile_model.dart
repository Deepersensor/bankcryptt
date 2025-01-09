import 'dart:convert';

class UserProfileModel {
  final String userId;
  final String name;
  final String email;
  final String avatarUrl;

  UserProfileModel({
    required this.userId,
    required this.name,
    required this.email,
    required this.avatarUrl,
  });

  factory UserProfileModel.fromJson(String source) {
    final Map<String, dynamic> data = json.decode(source);
    return UserProfileModel(
      userId: data['userId'],
      name: data['name'],
      email: data['email'],
      avatarUrl: data['avatarUrl'],
    );
  }

  String toJson() {
    final Map<String, dynamic> data = {
      'userId': userId,
      'name': name,
      'email': email,
      'avatarUrl': avatarUrl,
    };
    return json.encode(data);
  }
}
