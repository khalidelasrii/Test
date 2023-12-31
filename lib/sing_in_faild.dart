import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:test/home.dart';
import 'package:test/my_const.dart';

class SignInfaild extends StatelessWidget {
  const SignInfaild({super.key});

  // ignore: body_might_complete_normally_nullable
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        return await FirebaseAuth.instance.signInWithCredential(credential);
      }
    } catch (error) {
      print("Error signing in with Google: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    final _emailControllor = TextEditingController();
    final _passwordControllor = TextEditingController();
    @override
    void dispose() {
      _emailControllor.dispose();
      _passwordControllor.dispose();
    }

    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Create Account',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),

          /// .............................................Email TextField
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: SizedBox(
              child: TextField(
                controller: _emailControllor,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hoverColor: Colors.blue,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 209, 194, 149),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),

          /// .............................................Password TextField

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
            child: SizedBox(
              child: TextField(
                controller: _passwordControllor,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hoverColor: Colors.blue,
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 209, 194, 149),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              try {
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: _emailControllor.text.trim(),
                    password: _passwordControllor.text.trim());
                final user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  Navigator.pushNamed(context, Home.screenRout);
                }
              } catch (errure) {
                myerrureMessage(context, errure);
              }
            },
            child: const Text('Connexion'),
          ),

          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () async {
                try {
                  final UserCredential? userCredential =
                      await signInWithGoogle();

                  if (userCredential != null) {
                    Navigator.pushNamed(context, Home.screenRout);
                  }
                } catch (e) {
                  print(e);
                }
              },
              child: Icon(Icons.email_outlined))
        ],
      ),
    ));
  }
}
