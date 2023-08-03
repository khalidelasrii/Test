import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/responsive_mode.dart';
import 'Responsive_sing_up/sing_up_disktop.dart';
import 'Responsive_sing_up/sing_up_mobile.dart';
import 'Responsive_sing_up/sing_up_tablet.dart';

class SingUp extends StatelessWidget {
  const SingUp({super.key});
  static const String screenRout = 'SingUp';
  @override
  Widget build(BuildContext context) {
    return const ResponsiveMode(
        disktopscafold: SingUpDisktop(),
        mobilescafold: SingUpMobile(),
        tabletscafold: SingUpTablet());
  }
}
