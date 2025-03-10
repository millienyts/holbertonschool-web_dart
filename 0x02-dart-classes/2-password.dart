class Password {
  String password = '';

  bool isValid() {
    return password.length >= 8 &&
        password.length <= 16 &&
        RegExp(r'[A-Z]').hasMatch(password) &&
        RegExp(r'[a-z]').hasMatch(password) &&
        RegExp(r'[0-9]').hasMatch(password);
  }

  @override
  String toString() {
    return "Your Password is: $password";
  }
}
