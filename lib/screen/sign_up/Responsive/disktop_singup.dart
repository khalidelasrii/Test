import 'package:flutter/material.dart';
import '../../../core/widgets_screen/my_const.dart';
import '../../../features/athontification/presentation/ui/MySignUpScreen.dart';

class DisktopSingUp extends StatelessWidget {
  const DisktopSingUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF1E213C),
        appBar: myAppbar(context),
        
        body: Row(
          
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          const Expanded(child: MySignUpScreen()),
            
            Stack(children: [ 
             
              
              Container(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Color(0xFF1E213C), Color(0xFF1E213C)])),
              child: Opacity(
                opacity: 0.1,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/9/99/Cerro_Fitzroy_-_Sunrise2.jpg'),
              ),
            ),
              Container(
              decoration: const BoxDecoration(
                  gradient:
                      LinearGradient(colors: [Color.fromARGB(235, 30, 33, 60), Colors.transparent])),
               child: Opacity(
                opacity: 0,
                child: Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/9/99/Cerro_Fitzroy_-_Sunrise2.jpg'),
              ),
            ),
            ],
            
            )
           
          ],
        ));
  }
}
