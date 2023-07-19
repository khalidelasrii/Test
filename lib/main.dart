import 'package:flutter/material.dart';
import 'package:test/bloc/bloc/etoil_bloc.dart';
import 'home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( const Etoil(),
  );
}

class Etoil extends StatelessWidget {
  const Etoil({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BlocProvider(
        create: (BuildContext context) => EtoilBloc(),
        child:const Home()
       
    ),);
  }
}
