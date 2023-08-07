part of 'auth_bloc.dart';

class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthValidState extends AuthState {
  final Object user;

  AuthValidState(this.user);
}

class AuthErrurState extends AuthState {
  final Object errur;

  AuthErrurState(this.errur);
}
