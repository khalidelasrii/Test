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
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('SQL Test'),
            backgroundColor: Colors.grey,
          ),
          backgroundColor: Colors.grey.shade300,
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
                  color: const Color.fromARGB(255, 36, 236, 46),
                  textColor: Colors.black,
                  child: const Text('Read Data'),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () async {
                    int response = await sqlData
                        .deletdata("DELETE FROM 'Items' WHERE id = 5 ");
                    print(response);
                  },
                  color: const Color.fromARGB(255, 255, 24, 24),
                  textColor: Colors.black,
                  child: const Text('Delet Data'),
                ),
                const SizedBox(
                  height: 50,
                ),
                MaterialButton(
                  onPressed: () async {
                    int response = await sqlData.updatedata(
                        "UPDATE 'Items' SET 'Item'= 'Item is pdating ' WHERE  id = 7 ");

                    print(response);
                  },
                  color: Colors.blue,
                  textColor: Colors.black,
                  child: const Text('Update Data'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
