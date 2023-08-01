import 'package:flutter/material.dart';

import '../../../core/widgets_screen/my_const.dart';

class DisktopHome extends StatelessWidget {
  const DisktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(context),
      drawer: myDrawer(context),

      backgroundColor:const Color(0xFF1E213C), 
      body: Row(children: [
        
      ]),
      

    );
  }
}