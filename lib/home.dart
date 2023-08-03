import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/Logo.dart';
import 'package:test/core/const_widgets/drawer.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static const String screenRout = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_blue_gray,
      drawer: myDrawer(context),
      appBar: AppBar(
        backgroundColor: my_blue_gray,
        title: Logo(context),
        actions: [
          Center(
            child: SizedBox(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, WelcomScreen.screenRout);
                },
                child: const Row(
                  children: [
                    Icon(Icons.person_add_alt_1_rounded),
                    Text('Se connecter')
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          )
        ],
      ),
    );
  }
}
