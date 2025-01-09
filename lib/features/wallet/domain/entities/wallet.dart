import 'package:equatable/equatable.dart';

class Wallet extends Equatable {
  final String id;
  final String name;
  final double balance;

  Wallet({required this.id, required this.name, required this.balance});

  @override
  List<Object> get props => [id, name, balance];
}
