import 'package:flutter/material.dart';

import '../../../../core/widgets_screen/my_const.dart';
import '../../../features/athontification/presentation/ui/MySignUpScreen.dart';

class TabletSingUp extends StatelessWidget {
  const TabletSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color.fromARGB(255, 114, 244, 54),
    drawer: myDrawer(context),
    appBar: myAppbar(context),
    body: MySignUpScreen() ,
    );
  }
}