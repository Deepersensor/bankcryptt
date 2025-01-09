class UserProfile {
  final String id;
  final String name;
  final String email;
  final Settings settings;
  final KYC kyc;

  UserProfile({
    required this.id,
    required this.name,
    required this.email,
    required this.settings,
    required this.kyc,
  });

  // ...existing code...
}
