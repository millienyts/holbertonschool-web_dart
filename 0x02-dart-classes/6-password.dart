class Password {
  String _password;

  Password({required String password}) : _password = password;

  bool isValid() {
    return _password.length >= 8 &&
        _password.length <= 16 &&
        RegExp(r'[A-Z]').hasMatch(_password) &&
        RegExp(r'[a-z]').hasMatch(_password) &&
        RegExp(r'[0-9]').hasMatch(_password);
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
