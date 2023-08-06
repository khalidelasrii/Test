import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String _email='';
  String _password='';
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async{
      if (event is SingInEvent) {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: event.email.text.trim(), password:event.password.text.trim() );
        _email=event.email.text;
        _password=event.password.text;
        print('email: $_email passwod: $_password');
      }else if(event is SingUpEvent){

      }else if(event is AppbarEvent){

        emit(AppbarState(appBar:event.appBar ));
      }
    });

    Future singIn()async{
    }
  }
}
