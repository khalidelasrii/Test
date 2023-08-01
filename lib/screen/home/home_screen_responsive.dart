import 'package:flutter/material.dart';

import '../../core/widgets_screen/responsive_layote.dart';
import 'Responsive/disktop_home.dart';
import 'Responsive/moubile_home.dart';
import 'Responsive/tablet_home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String screenRout ='HomeScreen';

  @override
  Widget build(BuildContext context) {
    return const  ResponsiveLayote(
        disktopScafolde: DisktopHome(),
        moubileSccafolde: MoubileHome(),
        tabletScafolde: TabletHome());
  }
}
