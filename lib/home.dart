import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/my_Appbar.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const String screenRout = 'Home';

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      backgroundColor: my_blue_gray,
      drawer: myDrawer(context),
      appBar: AppBar(
        backgroundColor: my_blue_gray,
        title: Row(
          children: [
            SizedBox(width: 15,),
            Expanded(child: Text('${user.email}')),
          ],
        ),

      ),
    );
  }
}
