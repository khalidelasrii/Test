import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String email;
  final String password;
  final String username;

  const User({required this.id,required this.email,required this.password,required this.username});
  @override
  List<Object?> get props => [id,email,password];

}