// ...existing code...
class PaymentModel {
  final String id;
  final double amount;
  final String status;
  // ...other fields...

  PaymentModel({
    required this.id,
    required this.amount,
    required this.status,
    // ...other fields...
  });

  // ...existing methods...

  PaymentModel copyWith({String? status}) {
    return PaymentModel(
      id: this.id,
      amount: this.amount,
      status: status ?? this.status,
      // ...other fields...
    );
  }
}
// ...existing code...
