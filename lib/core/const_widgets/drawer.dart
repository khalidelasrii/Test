import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/my_color.dart';

Drawer myDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: my_blue_gray,
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
