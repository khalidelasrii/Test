import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:test/auth.dart';
import 'package:test/features/athontification/presentation/bloc/auth_bloc.dart';
import 'package:test/features/athontification/presentation/ui/sing_up.dart';
import 'package:test/features/athontification/presentation/ui/welcom_screen.dart';
import 'package:test/home.dart';
import 'package:test/features/athontification/presentation/ui/sing_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: const FirebaseOptions(

      apiKey: "AIzaSyAnDd9ptfdTcN9-v8PYo508bVcNoIyZhsM",
      projectId: "test-faa0e",
      messagingSenderId: "471563730284",
      appId: "1:471563730284:web:cd12a8560e3da41bc30749"

  ));
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
          initialRoute: Auth.screenRout,
          routes: {
            Auth.screenRout:(context)=> const Auth(),
            SingIn.screenRout: (context) => const SingIn(),
            SingUp.screenRout: (context) => const SingUp(),
            Home.screenRout: (context) => const Home(),
            WelcomScreen.screenRout: (context) => const WelcomScreen(),
          }),
    );
  }
}
