import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/Logo.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/home.dart';

import '../../wedgets/Sing_in_faild.dart';

class SingInDisktop extends StatelessWidget {
  const SingInDisktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      /// ///////////////////AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
      ),

      /// ////////////////Drawer
      drawer: myDrawer(context),

      /// ////////////////////Body
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 80),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Center(
                      child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent),
                    onPressed: () {
                      Navigator.pushNamed(context, Home.screenRout);
                    },
                    child: Image.asset('images/milo3.png'),
                  )),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black),
                        gradient: const LinearGradient(
                            colors: [Colors.black, Colors.blueAccent]),
                        borderRadius: const BorderRadius.only(
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
