import 'package:flutter/material.dart';
import 'package:test/myStars/Ferstgroup.dart';
import 'package:test/myStars/secondGroup.dart';

import '../myStars/MyStars.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
MyStars()          // SecondGroup().secondGroup(),
        ],
      ),
    ));
  }
}
