import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../screen/home/home_screen_responsive.dart';
import '../../screen/sign_up/sign_Up_responsive.dart';


AppBar myAppbar(BuildContext context) {
  late String mo_recherche;
  return AppBar(
    backgroundColor: const Color.fromARGB(255, 37, 92, 138),
    toolbarHeight:60,
    title: Row(
      children: [

        /////////
        myLogo(context),
        ///////////
        ///
        const Expanded(child: SizedBox()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: SizedBox(
              child: TextField(
                onChanged: (valeur) {
                  mo_recherche = valeur;
                },
                decoration: const InputDecoration(
                  hoverColor: Colors.blue,
                  hintText: 'Rechercher',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromARGB(255, 37, 92, 138),
                  border:OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  ),
                ),
              ),
            ),
          ),
        ),
        /////
                const Expanded(child: SizedBox()),

        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, SingUpScreen.screenRout);
          },
          child: const Material(color: Colors.blue, child: Text('SinUp')),
        ),
      ],
    ),
  );
}

Widget myLogo(BuildContext context) {
  return Padding(
    padding: EdgeInsets.all(3.0),
    child: GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.screenRout);
      },
      child: const Row(children: [
        Stack(
          children: [
            Positioned(
                right: 7,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.red,
                  size: 35,
                )),
            Positioned(
                left: 7,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.blue,
                  size: 35,
                )),
            Positioned(
                child: Icon(
              Icons.bookmark,
              color: Colors.amber,
              size: 30,
            )),
          ],
        ),
        Text(
          'MK',
          style: TextStyle(color: Colors.red, fontSize: 35),
        )
      ]),
    ),
  );
}

Drawer myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.grey,
    child: SingleChildScrollView(
      child: Column(
        children: [
          const Text(
            'Mktabati',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          ListTile(
            leading: const Icon(Icons.import_contacts_sharp),
            title: const Text('Title Text'),
            subtitle: const Text('Subtitle Text'),
            trailing: const Icon(Icons.car_rental),
            onTap: () {
              // Code to execute when the ListTile is tapped.
            },
          )
        ],
      ),
    ),
  );
}
