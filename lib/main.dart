import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test/test_stream.dart';

import 'authBloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyAnDd9ptfdTcN9-v8PYo508bVcNoIyZhsM",
          projectId: "test-faa0e",
          messagingSenderId: "471563730284",
          appId: "1:471563730284:web:cd12a8560e3da41bc30749"));
  runApp(Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) =>
            AuthBloc(firestorcode: Firestorcode())..add(GetallUserEvent()),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(focusColor: Colors.blue),
          home: const TestStream(),
        ));
  }
}
