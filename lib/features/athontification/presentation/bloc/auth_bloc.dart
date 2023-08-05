import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String email='';
  String password='';
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async{
      if (event is SingInEvent) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: event.email.text.trim(), password:event.password.text.trim() );
        email=event.email.text;
        password=event.password.text;
        print('email: $email passwod: $password');
      }
    });

    Future singIn()async{
    }
  }
}
