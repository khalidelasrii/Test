import 'package:flutter/material.dart';
import 'package:test/screen/home.dart';

void main() {
  runApp(
    const Etoil(),
  );
}

class Etoil extends StatelessWidget {
  const Etoil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
