import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  final String id;
  final String walletId;
  final double amount;
  final DateTime date;
  final String type;

  Transaction({
    required this.id,
    required this.walletId,
    required this.amount,
    required this.date,
    required this.type,
  });

  @override
  List<Object> get props => [id, walletId, amount, date, type];
}
