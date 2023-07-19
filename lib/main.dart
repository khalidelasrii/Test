
import 'package:flutter/material.dart';



void main() {
  runApp(Etoil());
}

class Etoil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(child: Row(children: [IconButton(onPressed: (){}, icon: const Icon(Icons.star,color: Colors.amber,size: 16,))],));
  }
}