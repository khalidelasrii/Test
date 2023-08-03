import 'package:flutter/material.dart';
import 'package:test/features/athontification/presentation/bloc/auth_bloc.dart';
import 'package:test/features/athontification/presentation/ui/sing_up.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';
import 'package:test/home.dart';
import 'package:test/features/athontification/presentation/ui/sing_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Maktabati());
}

class Maktabati extends StatelessWidget {
  const Maktabati({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(focusColor: Colors.blue),
          initialRoute: WelcomScreen.screenRout,
          routes: {
            SingIn.screenRout: (context) => const SingIn(),
            SingUp.screenRout: (context) => const SingUp(),
            Home.screenRout: (context) => const Home(),
            WelcomScreen.screenRout: (context) => const WelcomScreen(),
          }),
    );
  }
}
