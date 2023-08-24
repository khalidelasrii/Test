import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../test_stream.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  Firestorcode firestorcode;
  AuthBloc({required this.firestorcode}) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) async {
      if (event is GetallUserEvent) {
        final users = await firestorcode.getuser();

        emit(GetAllUserState(userList: users));
      } else if (event is DelletUserEvent) {
        final users = await firestorcode.getuser();

        await firestorcode.deletuser(event.userId);
        emit(GetAllUserState(userList: users));
      } else if (event is AddUserEvent) {
        final users = await firestorcode.getuser();

        await firestorcode.adduser(event.usr);
        emit(GetAllUserState(userList: users));
      } else {
        final users = await firestorcode.getuser();

        emit(GetAllUserState(userList: users));
      }
    });
  }
}
