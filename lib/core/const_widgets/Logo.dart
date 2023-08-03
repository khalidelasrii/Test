import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/my_color.dart';
import 'package:test/home.dart';

Widget Logo(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(backgroundColor: my_red),
    onPressed: () {
      Navigator.pushNamed(context, Home.screenRout);
    },
    child: Text(
      'Milo Tech ',
      style: TextStyle(fontSize: 20),
    ),
  );
}
