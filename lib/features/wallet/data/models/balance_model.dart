import 'package:bankcryptt/features/wallet/domain/entities/balance.dart';

class BalanceModel extends Balance {
  BalanceModel({
    required String walletId,
    required double amount,
  }) : super(walletId: walletId, amount: amount);

  factory BalanceModel.fromJson(Map<String, dynamic> json) {
    return BalanceModel(
      walletId: json['walletId'],
      amount: json['amount'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'walletId': walletId,
      'amount': amount,
    };
  }
}
