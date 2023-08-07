import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/my_const.dart';
import 'package:test/welcome_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key});
  static const String screenRout = 'Home';

  @override
  Widget build(BuildContext context) {
    final _user = FirebaseAuth.instance.currentUser;
    if (_user != null) {
      return Scaffold(
        appBar: myAppBarConnected(context),
      );
    }
    return Scaffold(
        backgroundColor: Colors.red.shade300,
        body: Row(
          children: [
            const Expanded(child: SizedBox()),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, WelcomScreen.screenRout);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person_add_alt),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Tray to Create accounte',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ],
                  )),
            ),
            const Expanded(child: SizedBox()),
          ],
        ));
  }
}
