import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  String? email;
  String? password;
  String? username;
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      if (event is SingInEvent) {}
    });
  }
}
