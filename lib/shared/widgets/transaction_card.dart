import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  final String title;
  final String date;
  final double amount;

  const TransactionCard({
    Key? key,
    required this.title,
    required this.date,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // ...existing code...
      child: ListTile(
        title: Text(title),
        subtitle: Text(date),
        trailing: Text('\$${amount.toStringAsFixed(2)}'),
      ),
    );
  }
}
