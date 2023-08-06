
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/my_Appbar.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';

import '../../wedgets/Sing_up_faild.dart';

class SingUpDisktop extends StatelessWidget {
  const SingUpDisktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black ,
      appBar: AppBar(backgroundColor: Colors.black, title: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Expanded(child: Image.asset('images/milo2.png')),
      )),
      drawer: myDrawer(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 80),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Center(child:  Expanded(child: Image.asset('images/milo1.png')),),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(colors: [Colors.white,Colors.blue]),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                      ),
                      child: const SignUpfaild(),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
