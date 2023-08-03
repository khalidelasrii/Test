import '../../domaine/entities/user.dart';

class AuthUserModel extends User {
  const AuthUserModel(
      {required super.id, required super.email, required super.password});
}
