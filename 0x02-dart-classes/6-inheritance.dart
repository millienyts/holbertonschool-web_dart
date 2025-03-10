import '6-password.dart';

class User extends Password {
  int id;
  String name;
  int age;
  double height;
  String _userPassword;

  User({
    required this.id,
    required this.name,
    required this.age,
    required this.height,
    required String user_password,
  })  : _userPassword = user_password,
        super(password: user_password);

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }

  static User fromJson(Map<String, dynamic> userJson) {
    return User(
      id: userJson['id'] ?? 0,
      name: userJson['name'] ?? 'Unknown',
      age: userJson['age'] ?? 0,
      height: (userJson['height'] ?? 0.0).toDouble(),
      user_password: userJson['user_password'] ?? '',
    );
  }

  String get user_password => _userPassword;

  set user_password(String newPassword) {
    _userPassword = newPassword;
    super.password = newPassword; // Ensure superclass is updated
  }

  @override
  String toString() {
    return "User(id : $id ,name: $name, age: $age, height: $height, Password: ${isValid()})";
  }
}
