import 'package:flutter/material.dart';
import 'package:test/features/athontification/presentation/ui/sing_up.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';
import 'package:test/home.dart';
import 'package:test/features/athontification/presentation/ui/sing_in.dart';

void main() {
  runApp(Maktabati());
}

class Maktabati extends StatelessWidget {
  const Maktabati({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(focusColor: Colors.blue),
        initialRoute: WelcomScreen.screenRout,
        routes: {
          SingIn.screenRout: (context) => SingIn(),
          SingUp.screenRout: (context) => SingUp(),
          Home.screenRout: (context) => Home(),
          WelcomScreen.screenRout: (context) => WelcomScreen(),
        });
  }
}
