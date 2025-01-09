// ...existing code...

String formatDate(DateTime date) {
  return "${date.day}/${date.month}/${date.year}";
}

String currencyFormatter(double amount) {
  return "\$${amount.toStringAsFixed(2)}";
}

// ...existing code...
