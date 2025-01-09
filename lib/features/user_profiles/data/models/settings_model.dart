class SettingsModel {
  final bool notificationsEnabled;
  final String language;

  SettingsModel({required this.notificationsEnabled, required this.language});

  factory SettingsModel.fromJson(Map<String, dynamic> json) {
    return SettingsModel(
      notificationsEnabled: json['notificationsEnabled'],
      language: json['language'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'notificationsEnabled': notificationsEnabled,
      'language': language,
    };
  }
}
