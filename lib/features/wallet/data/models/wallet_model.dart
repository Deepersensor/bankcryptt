import 'package:bankcryptt/features/wallet/domain/entities/wallet.dart';

class WalletModel extends Wallet {
  WalletModel({
    required String id,
    required String name,
    required double balance,
  }) : super(id: id, name: name, balance: balance);

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return WalletModel(
      id: json['id'],
      name: json['name'],
      balance: json['balance'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'balance': balance,
    };
  }
}
