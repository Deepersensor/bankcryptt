import 'dart:convert';

class CryptoCardModel {
  final String id;
  final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final double balance;

  CryptoCardModel({
    required this.id,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.balance,
  });

  factory CryptoCardModel.fromJson(String source) {
    final Map<String, dynamic> data = json.decode(source);
    return CryptoCardModel(
      id: data['id'],
      cardNumber: data['cardNumber'],
      expiryDate: data['expiryDate'],
      cardHolderName: data['cardHolderName'],
      balance: data['balance'],
    );
  }

  String toJson() {
    final Map<String, dynamic> data = {
      'id': id,
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'cardHolderName': cardHolderName,
      'balance': balance,
    };
    return json.encode(data);
  }
}
