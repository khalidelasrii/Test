part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class ConnexionStateConnect extends AuthState {}

class ConnexionStateFilde extends AuthState {}
class AppbarState extends AuthState{
  final Widget appBar;

  AppbarState({required this.appBar});
}
