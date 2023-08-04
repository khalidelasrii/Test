import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/Logo.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';

import '../../wedgets/Sing_up_faild.dart';

class SingInMobile extends StatelessWidget {
  const SingInMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_blue_gray,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:  Expanded(child: Image.asset('images/milo1.png')),
        actions: const [Icon(Icons.park_outlined)],
      ),
      drawer: myDrawer(context)
,      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: my_amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Center(child: Expanded(child: Image.asset('images/milo3.png'),),),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: my_red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
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
