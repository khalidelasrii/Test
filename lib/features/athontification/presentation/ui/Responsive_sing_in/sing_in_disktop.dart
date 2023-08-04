
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/Logo.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';

import '../../wedgets/Sing_in_faild.dart';

class SingInDisktop extends StatelessWidget {
  const SingInDisktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_blue_gray,
      appBar: AppBar(backgroundColor: my_blue_gray, title: Logo(context)),
      drawer: myDrawer(context),
      body: Center(
        child: Padding(
          padding: const  EdgeInsets.symmetric(horizontal: 150, vertical: 80),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Row(
              children: [

                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Center(child: Expanded(child: Image.asset('images/milo3.png'),)),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient:LinearGradient(colors: [Colors.black87,Colors.blueAccent]) ,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                      ),
                      child: const SignInfaild(),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
