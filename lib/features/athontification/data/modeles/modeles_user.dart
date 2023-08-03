import '../../domaine/entities/user.dart';

class AuthUserModel extends User {
  AuthUserModel(
      {required super.id, required super.email, required super.password});
}
