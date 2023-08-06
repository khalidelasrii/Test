part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class SingInEvent extends AuthEvent {
  final TextEditingController email;
  final TextEditingController password;

  const SingInEvent({required this.email, required this.password});
   List<Object> get props => [email,password];
}

class SingUpEvent extends AuthEvent {
  final TextEditingController usernam;
  final TextEditingController email;
  final TextEditingController password;

  const SingUpEvent(
      {required this.email, required this.password, required this.usernam});
         List<Object> get props => [usernam,email,password];

}
class AppbarEvent extends AuthEvent{
  final Widget appBar;

  AppbarEvent({required this.appBar});
}
