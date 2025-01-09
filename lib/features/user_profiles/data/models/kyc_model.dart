class KycModel {
  final String userId;
  final String status;

  KycModel({required this.userId, required this.status});

  factory KycModel.fromJson(Map<String, dynamic> json) {
    return KycModel(
      userId: json['userId'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'status': status,
    };
  }
}
