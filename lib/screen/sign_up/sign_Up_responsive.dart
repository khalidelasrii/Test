import 'package:flutter/material.dart';


import '../../core/widgets_screen/responsive_layote.dart';
import 'Responsive/disktop_singup.dart';
import 'Responsive/moubile_singup.dart';
import 'Responsive/tablet_singup.dart';

class SingUpScreen extends StatelessWidget {
  const SingUpScreen({super.key});
  static const String screenRout ='SingUpScreen';

  @override
  Widget build(BuildContext context) {
    return  ResponsiveLayote(
        disktopScafolde: DisktopSingUp(),
        moubileSccafolde: MoubileSingUp(),
        tabletScafolde: TabletSingUp());
  }
}
