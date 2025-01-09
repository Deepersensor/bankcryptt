// ...existing code...

bool isEmailValid(String email) {
  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$');
  return emailRegex.hasMatch(email);
}

// ...existing code...
