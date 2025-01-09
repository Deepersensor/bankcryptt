import 'package:bankcryptt/features/wallet/domain/entities/transaction.dart';

class TransactionModel extends Transaction {
  TransactionModel({
    required String id,
    required String walletId,
    required double amount,
    required DateTime date,
    required String type,
  }) : super(id: id, walletId: walletId, amount: amount, date: date, type: type);

  factory TransactionModel.fromJson(Map<String, dynamic> json) {
    return TransactionModel(
      id: json['id'],
      walletId: json['walletId'],
      amount: json['amount'],
      date: DateTime.parse(json['date']),
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'walletId': walletId,
      'amount': amount,
      'date': date.toIso8601String(),
      'type': type,
    };
  }
}
