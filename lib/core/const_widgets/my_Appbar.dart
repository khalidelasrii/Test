import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/home.dart';

import '../../features/athontification/presentation/ui/welcom_screen.dart';

AppBar MyAppBarConnected(BuildContext context) {
  final _user=FirebaseAuth.instance.currentUser!;
  return AppBar(
    title: Image.asset('images/milo3.png'),

    actions: [
      Text('${_user.email}')
    ],
  );
}
Widget MyAppBarNotConnected(BuildContext context) {
  final _user=FirebaseAuth.instance.currentUser!;
  return Center(
        child: SizedBox(
          child: ElevatedButton(
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, WelcomScreen.screenRout);
            },
            child: const Row(
              children: [
                Text('Deconnecter'),
                SizedBox(width: 2),
                Icon(Icons.exit_to_app),

              ],
  ))));



}