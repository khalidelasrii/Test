part of 'auth_bloc.dart';

class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SingInEvent extends AuthEvent {
  final String email;
  final String password;

  SingInEvent(this.email, this.password);
}

class SingUpEvent extends AuthEvent {
  final String email;
  final String password;
  final String username;

  SingUpEvent(this.email, this.password, this.username);
}
