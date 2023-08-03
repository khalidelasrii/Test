import 'package:flutter/material.dart';
import 'package:test/core/const_widgets/responsive_mode.dart';
import 'package:test/features/athontification/presentation/ui/Responsive_sing_in/sing_in_disktop.dart';

import 'Responsive_sing_in/sing_in_mobile.dart';
import 'Responsive_sing_in/sing_in_tablet.dart';

class SingIn extends StatelessWidget {
  const SingIn({super.key});
  static const String screenRout = 'SingIn';
  @override
  Widget build(BuildContext context) {
    return ResponsiveMode(
        disktopscafold: SingInDisktop(),
        mobilescafold: SingInMobile(),
        tabletscafold: SingInTablet());
  }
}
