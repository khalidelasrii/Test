part of 'auth_bloc.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {}

class GetAllUserState extends AuthState {
  final dynamic userList;

  const GetAllUserState({required this.userList});

  @override
  List<Object?> get props => [userList];
}
