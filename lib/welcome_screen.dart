import 'package:flutter/material.dart';
import 'package:test/sing_in.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);
  static const String screenRout = 'WelcomScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: const Text('MELO TECH'),
          backgroundColor: Colors.black,
          shadowColor: Colors.transparent,
        ),
        body: Center(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 80),
                child: Container(
                    constraints:
                        const BoxConstraints(minWidth: 300, minHeight: 300),
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(color: Colors.black),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                        child: Center(
                          child: Image.asset('images/milo3.png'),
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            gradient: const LinearGradient(
                              colors: [Colors.black, Colors.blue],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(25),
                              bottomRight: Radius.circular(25),
                            ),
                          ),
                          child: Column(
                            ////////////////////////////////////

                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 260,
                                    minWidth: 250,
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blue,
                                    ),
                                    onPressed: () {
                                      print('Not_Now');
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
                              const SizedBox(
                                height: 8,
                              ),
                              Center(
                                child: Container(
                                  constraints: const BoxConstraints(
                                    maxHeight: 50,
                                    maxWidth: 260,
                                    minWidth: 250,
                                  ),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                    ),
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
                              ),
                            ],
                          ),
                        ),
                      ),
                    ])))));
  }
}
