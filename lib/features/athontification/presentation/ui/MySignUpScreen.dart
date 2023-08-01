import 'package:flutter/material.dart';

class MySignUpScreen extends StatelessWidget {
  const MySignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    late String email;
    late String password;
    late String username;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Container(
          constraints: const BoxConstraints(
            maxWidth: 700,
            minHeight: 550,
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 34, 54, 73),
              Color.fromARGB(255, 189, 183, 134)
            ]),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),


 //////////////////////////////////////////          
          child: Center(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 8),
                        child: SizedBox(
                          child: TextField(
                            onChanged: (valeur) {
                              username = valeur;
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: const InputDecoration(
                              hoverColor: Colors.blue,
                              hintText: 'User-name',
                              hintStyle: TextStyle(color: Colors.white),
                              filled: true,
                              fillColor: Color.fromARGB(255, 209, 194, 149),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 8),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 40),
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
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.orange, width: 2),
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Vous pouvez utiliser les variables "email" et "password" ici pour soumettre les informations d'inscription.
                          print('Email: $email, Password: $password');
                        },
                        child: Text('S\'inscrire'),
                      ),
                    ],
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
