import 'package:flutter/material.dart';
import '../../../core/widgets_screen/my_const.dart';
import '../../../features/athontification/presentation/ui/MySignUpScreen.dart';

class MoubileSingUp extends StatelessWidget {
  const MoubileSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFF1E213C),
    drawer: myDrawer(context),
    appBar: myAppbar(context),
    body: 
       MySignUpScreen());

  }
}