import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:test/sing_in.dart';
import 'package:test/welcome_screen.dart';

import 'home.dart';

/// AppBar user connected
AppBar myAppBarConnected(BuildContext context, User _user) {
  profilimage() {
    return Container(
      constraints: const BoxConstraints(maxHeight: 50),
      child: ClipOval(
        child: Image.network(
          '${_user.photoURL}',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        SizedBox(
          height: 60,
          child: Image.asset('images/milo2.png'),
        ),
        const SizedBox(
          width: 8,
        ),
        _user.photoURL != null ? profilimage() : SizedBox(),
        const SizedBox(
          width: 8,
        ),
        _user.displayName != null
            ? Text('${_user.displayName}')
            : Text('${_user.email}'),
      ],
    ),
    actions: [
      IconButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            Navigator.pushNamed(context, WelcomScreen.screenRout);
          },
          icon: const Icon(Icons.exit_to_app))
    ],
  );
}

/// AppBar user not connected
AppBar myAppBarNotConnected(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    title: Row(
      children: [
        SizedBox(
          height: 60,
          child: Image.asset('images/milo2.png'),
        ),
      ],
    ),
    actions: [
      Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
          onPressed: () {
            Navigator.pushNamed(context, WelcomScreen.screenRout);
          },
          child: const Row(
            children: [
              Icon(Icons.person_add),
              SizedBox(
                width: 4,
              ),
              Text('Se connecter'),
            ],
          ),
        ),
      ),
    ],
  );
}

/// LOGO
Widget myLogo(BuildContext context) {
  final _user = FirebaseAuth.instance.currentUser;
  return Center(
      child: ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent),
    onPressed: () {
      if (_user != null) {
        Navigator.pushNamed(context, Home.screenRout);
      } else {
        Navigator.pushNamed(context, SingIn.screenRout);
      }
    },
    child: Image.asset('images/milo3.png'),
  ));
}

/// /////////errure message
myerrureMessage(BuildContext context, Object errure) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Stack(
        children: [
          Container(
            padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(
                color: Colors.red.shade900,
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Text(
                '$errure',
                style: const TextStyle(color: Colors.white),
              ),
            ),
          ),
          const Center(
            child: Icon(
              Icons.swipe_down_sharp,
              color: Colors.amberAccent,
            ),
          )
        ],
      ),
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
    ),
  );
}
