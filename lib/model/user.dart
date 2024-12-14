class UserModel {
  String username;
  String password;

  UserModel({required this.username, required this.password});

  static bool authenticateUser(String username, String password) {
    return username == "pengguna" && password == "masuk";
  }
}