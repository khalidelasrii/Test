import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/features/athontification/presentation/bloc/auth_bloc.dart';

class SignUpfaild extends StatelessWidget {
  const SignUpfaild({super.key});

  @override
  Widget build(BuildContext context) {
    late String email;
    late String password;
    late String usernam;
    return Center(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Create Account',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: SizedBox(
              child: TextField(
                onChanged: (valeur) {
                  usernam = valeur;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hoverColor: Colors.blue,
                  hintText: 'User-name',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 209, 194, 149),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 8),
            child: SizedBox(
              child: TextField(
                onChanged: (valeur) {
                  email = valeur;
                },
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hoverColor: Colors.blue,
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 209, 194, 149),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
            child: SizedBox(
              child: TextField(
                onChanged: (valeur) {
                  password = valeur;
                },
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  hoverColor: Colors.blue,
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 209, 194, 149),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              BlocProvider.of<AuthBloc>(context).add(SingUpEvent(
                  email: email, password: password, usernam: usernam));
            },
            child: const Text('S\'inscrire'),
          ),
        ],
      ),
    ));
  }
}
