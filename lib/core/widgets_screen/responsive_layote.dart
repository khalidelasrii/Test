import 'package:flutter/material.dart';

class ResponsiveLayote extends StatelessWidget {
  const ResponsiveLayote(
      {super.key,
      required this.disktopScafolde,
      required this.moubileSccafolde,
      required this.tabletScafolde,});

  final Widget moubileSccafolde;
  final Widget tabletScafolde;
  final Widget disktopScafolde;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder:(context, constraints) {
      if(constraints.maxWidth <510){
        return moubileSccafolde;
      }else if(constraints.maxWidth <900){
        return tabletScafolde;
      }else if(constraints.maxWidth>=900){
        return disktopScafolde;
      }return SizedBox();
    }, );
  }
}
