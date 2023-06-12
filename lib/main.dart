import 'package:flutter/material.dart';
import 'package:test/sql_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SqlData sqlData = SqlData();

    return MaterialApp(
      title: 'Test',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('SQL Test'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () async {
                  int response = await sqlData.insertdata(
                      "INSERT INTO 'Items'('Item') VALUES ('note one in table')");
                  print(response);
                },
                color: Colors.orange,
                textColor: Colors.black,
                child: const Text('Insert Data'),
              ),
              const SizedBox(
                height: 50,
              ),
              MaterialButton(
                onPressed: () async {
                  List<Map> response =
                      await sqlData.readData("SELECT * FROM 'Items'");
                  print(response);
                },
                color: Colors.orange,
                textColor: Colors.black,
                child: const Text('Read Data'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
