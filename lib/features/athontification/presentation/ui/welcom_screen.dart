
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/Logo.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/features/athontification/presentation/ui/Sing_in.dart';
import 'package:test/features/athontification/presentation/ui/sing_up.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({super.key});
  static const String screenRout = 'WelcomScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_blue_gray,
      appBar: AppBar(
        title: const Text('Welcom home'),
        backgroundColor: my_blue_gray,
        shadowColor: Colors.transparent,
      ),
      drawer: myDrawer(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 80),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Column(
              children: [
                Expanded(
                    child: Container(

                  decoration:  BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius:const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Center(child: Expanded(child: Image.asset('images/milo3.png'),)),
                )),
                Expanded(
                    flex: 4,
                    child: Container(
                      decoration:  BoxDecoration(
                        border: Border.all(color: Colors.black),

                        gradient: const LinearGradient(colors: [Colors.black,Colors.blue],begin:Alignment.topCenter,end:Alignment.bottomCenter  ),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxHeight: 50, maxWidth: 260, minWidth: 250),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SingUp.screenRout);
                                },
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.person_add),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text('Create account'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          /////// SinUP
                          const SizedBox(
                            height: 8,
                          ),
                          Center(
                            child: Container(
                              constraints: const BoxConstraints(
                                  maxHeight: 50, maxWidth: 260, minWidth: 250),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SingIn.screenRout);
                                },
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.desktop_mac_sharp),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text('Connection'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
