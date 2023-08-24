part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

class GetallUserEvent extends AuthEvent {}

class DelletUserEvent extends AuthEvent {
  final String userId;

  const DelletUserEvent({required this.userId});
  @override
  List<Object?> get props => [userId];
}

class AddUserEvent extends AuthEvent {
  final Usr usr;

  const AddUserEvent({required this.usr});
  @override
  List<Object?> get props => [usr];
}
