import 'package:equatable/equatable.dart';

class Balance extends Equatable {
  final String walletId;
  final double amount;

  Balance({required this.walletId, required this.amount});

  @override
  List<Object> get props => [walletId, amount];
}
