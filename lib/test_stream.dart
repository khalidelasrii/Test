import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/authBloc/auth_bloc.dart';

class TestStream extends StatelessWidget {
  const TestStream({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 94, 142),
        title: Center(
          child: Text('Maroua'),
        ),
      ),
      backgroundColor: Colors.yellowAccent.shade400,
      floatingActionButton: _floatinButon(context),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is GetAllUserState) {
            return state.userList;
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

_floatinButon(BuildContext context) {
  return FloatingActionButton(onPressed: () {
    Usr user = const Usr(name: 'maroua', age: 30);

    BlocProvider.of<AuthBloc>(context).add(AddUserEvent(usr: user));
  });
}

// ! ///////////////////////////////////////////////////////////////////

class Usr extends Equatable {
  final String name;
  final int age;
  final String? id;

  const Usr({required this.name, required this.age, this.id});

  @override
  List<Object?> get props => [name, age];
}

class Firestorcode {
  final firestore = FirebaseFirestore.instance;

  getuser() async {
    return StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('khalid').snapshots(),
        builder: (context, snapshot) {
          final List<Row> khalidlist = [];
          if (snapshot.hasData) {
            final users = snapshot.data!.docs.reversed.toList();
            for (var khal in users) {
              final khalidWidget = Row(
                children: [
                  Column(
                    children: [
                      Text(khal['name']),
                      Text(khal['age'].toString()),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  IconButton(
                      onPressed: () {
                        deletuser(khal.id);
                      },
                      icon: const Icon(Icons.delete))
                ],
              );

              khalidlist.add(khalidWidget);
            }
          }

          return ListView(
            children: khalidlist,
          );
        });

    // final collectionStream = await firestore.collection('khalid').get();

    // final users = collectionStream.docs.map((alluser) {
    //   final data = alluser.data();
    //   final usrid = alluser.id;
    //   return Usr(
    //     id: usrid,
    //     name: data['name'],
    //     age: data['age'],
    //   );
    // }).toList();
    // return users;
  }

  Future<Unit> adduser(Usr user) async {
    await firestore.collection('khalid').add({
      'name': user.name,
      'age': user.age,
    });
    return Future.value(unit);
  }

  Future<Unit> deletuser(String userid) async {
    await firestore.collection('khalid').doc(userid).delete();
    return Future.value(unit);
  }
}
