import 'package:flutter/material.dart';
import 'screen/home/home_screen_responsive.dart';
import 'screen/sign_up/sign_Up_responsive.dart';

void main() {
  runApp( Maktabati());
}


class Maktabati extends StatelessWidget {
  const Maktabati({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    theme: ThemeData(focusColor: Colors.blue),
 
    initialRoute: HomeScreen.screenRout,
    routes:{
      HomeScreen.screenRout:(context) => const HomeScreen(),
      SingUpScreen.screenRout:(context) => const SingUpScreen(),
    } 
    );
  }
}
