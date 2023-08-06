import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/core/const_widgets/my_Appbar.dart';
import 'package:test/features/athontification/presentation/bloc/auth_bloc.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';

import 'features/athontification/presentation/ui/Sing_in.dart';
import 'home.dart';
class Auth extends StatelessWidget {
  const Auth({super.key});
  static const String screenRout='Auth';

  @override
  Widget build(BuildContext context) {
    Widget appbarScreen;
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context,snapshot){
          if(snapshot.hasData){
           BlocProvider.of<AuthBloc>(context).add(AppbarEvent(appBar: MyAppBarConnected(context)));
            return Home();
          }else {

            BlocProvider.of<AuthBloc>(context).add(AppbarEvent(appBar: MyAppBarNotConnected(context)));
            return SingIn();

          }
        }),
      ),
    );
  }
}
