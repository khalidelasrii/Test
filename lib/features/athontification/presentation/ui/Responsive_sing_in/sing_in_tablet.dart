import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/const_widgets/my_Appbar.dart';
import '../../../../../core/const_widgets/drawer.dart';
import '../../../../../core/const_widgets/my_color.dart';
import '../../bloc/auth_bloc.dart';
import '../../wedgets/Sing_up_faild.dart';

class SingInTablet extends StatelessWidget {
  const SingInTablet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: my_blue_gray,
      appBar: AppBar(
        title: Expanded(
          child: Image.asset('images/milo2.png'),
        ),
        actions: [
          BlocBuilder(builder: (context, state) {
            if (state is AppbarState) {
              return state.appBar;
            }
            return SizedBox();
          })
        ],
      ),
      drawer: myDrawer(context),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Container(
            constraints: const BoxConstraints(minWidth: 300, minHeight: 300),
            child: Column(
              children: [
                Expanded(
                    child: Container(
                  decoration: const BoxDecoration(
                    color: my_amber,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25)),
                  ),
                  child: Center(child:Expanded(
                    child: Image.asset('images/milo2.png'),
                  ), ),
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: my_red,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25)),
                      ),
                      child: const SignUpfaild(),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
