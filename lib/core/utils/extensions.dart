// ...existing code...

extension StringExtension on String {
  bool get isValidEmail => RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(this);
}

extension DateTimeExtension on DateTime {
  String toFormattedString() => "${this.day}/${this.month}/${this.year}";
}

// ...existing code...
