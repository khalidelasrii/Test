import 'package:flutter/material.dart';
import 'package:test/sing_in_faild.dart';
import 'my_const.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});
  static const String screenRout = 'SingIn';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,

      /// ///////////////////AppBar
      appBar: myAppBarNotConnected(context),

      /// ////////////////Drawer

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
                  child: myLogo(context),
                )),
                Expanded(
                    flex: 3,
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
