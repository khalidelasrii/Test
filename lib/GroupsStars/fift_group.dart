import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/bloc/etoil_bloc.dart';
class FifiGroup extends StatelessWidget {
  const FifiGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<EtoilBloc,EtoilState>(builder: (context,state){

        return Container();
      }),
    );
  }
}