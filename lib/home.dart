import 'package:flutter/material.dart';
import 'package:test/GroupsStars/ferst_group.dart';

import 'GroupsStars/fift_group.dart';
import 'GroupsStars/fourth_group.dart';
import 'GroupsStars/second_group.dart';
import 'GroupsStars/tert_group.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Responsive',
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20,bottom: 20,),
                      child: FerstGroup(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 20,bottom: 20,),
                      child: TertGroup(),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: SecondGroup(),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FourthGroup(),
                    ),
                  ],
                ),
                
              
              ],

            ),
            //  FiftGroup(), 
          ],
        ));
  }
}
