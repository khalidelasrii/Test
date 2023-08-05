import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'features/athontification/presentation/ui/Sing_in.dart';
import 'home.dart';
class Auth extends StatelessWidget {
  const Auth({super.key});
  static const String screenRout='Auth';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context,snapshot){
          if(snapshot.hasData){
            return Home();
          }else {
            return SingIn();
          }
        }),
      ),
    );
  }
}
