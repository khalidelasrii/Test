// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test/bloc/bloc/etoil_bloc.dart';

// class WidgetsHome extends StatelessWidget {
//   const WidgetsHome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Color whitecolor = Colors.black;
//     Color ambercolor = Colors.amber;
//     var ferstEvent = FerststarEvent();
//     var secondEvent = SecondStarEvent();
//     var tertEvent = TertStarEvent();
//     var fourthEvent = FourthStarEvent();
//     var fifthEvent = FifthStarEvent();
//     bool sizestar = false;

//     return Scaffold(
//         backgroundColor: Colors.grey,
//         body: StatefulBuilder(builder: (context, setState) {
//           return BlocBuilder<EtoilBloc, EtoilState>(builder: (context, State) {
//             if (State is EtoilInitial) {
//               return Row(
//                 children: [
//                   MouseRegion(
//                       onEnter: (event) {
//                         setState(() {
//                           sizestar = true;
//                         });
//                       },
//                       onExit: (event) {
//                         setState(() {
//                           sizestar = false;
//                         });
//                       },
//                       child: EtoilView(
//                         color: whitecolor,
//                         eventComme: ferstEvent,
//                         laTai: sizestar ? 20 : 30,
//                       )),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             } else if (State is Ferststar) {
//               return Row(
//                 children: [
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: ferstEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             } else if (State is SecondStar) {
//               return Row(
//                 children: [
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: ferstEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             } else if (State is TertStar) {
//               return Row(
//                 children: [
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: ferstEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             } else if (State is FourthStar) {
//               return Row(
//                 children: [
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: ferstEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: whitecolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             } else if (State is FifthStar) {
//               return Row(
//                 children: [
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: ferstEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: secondEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: tertEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: fourthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   ),
//                   EtoilView(
//                     color: ambercolor,
//                     eventComme: fifthEvent,
//                     laTai: sizestar ? 20 : 30,
//                   )
//                 ],
//               );
//             }
//             return const SizedBox();
//           });
//         }));
//   }
// }

// class EtoilView extends StatelessWidget {
//   EtoilView(
//       {super.key,
//       required this.color,
//       required this.eventComme,
//       required this.laTai});
//   final Color color;
//   dynamic eventComme;
//   final double laTai;
//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       mouseCursor: MouseCursor.defer,
//       onPressed: () {
//         BlocProvider.of<EtoilBloc>(context).add(eventComme);
//       },
//       icon: Icon(
//         Icons.star,
//         color: color,
//         size: laTai,
//       ),
//     );
//   }
// }
