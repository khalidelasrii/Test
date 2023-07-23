// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:test/bloc/bloc/etoil_bloc.dart';

// class FifiGroup extends StatelessWidget {
//   const FifiGroup({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double lasomme = 0;
//     const amber = Colors.amber;
//     const black = Colors.black;
//     return BlocProvider(
//         create: (context) => EtoilBloc(),
//         child:   StatefulBuilder(builder: (context, setState) {
//           return BlocBuilder<EtoilBloc,EtoilState>(builder: (context, state) {
            
//                   if (state is EtoilInitial) {
//                     return const Row(
//                       children: [
//                         Icon(
//                           Icons.star,
//                           color: black,
//                           size: 25,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: black,
//                           size: 25,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: black,
//                           size: 25,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: black,
//                           size: 25,
//                         ),
//                         Icon(
//                           Icons.star,
//                           color: black,
//                           size: 25,
//                         ),
//                       ],
//                     );
//                   } else if (state is TotalEtoil) {
//                     lasomme = state.Total;
//                     print(lasomme);
//                     if (lasomme == 0) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     } else if ( 0<lasomme && lasomme <2) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     } else if (2<=lasomme && lasomme <3) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     } else if (3<=lasomme && lasomme <4) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     } else if (4<=lasomme && lasomme <5) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: black,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     } else if (4< lasomme ) {
//                       return const Row(
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: amber,
//                             size: 25,
//                           ),
//                         ],
//                       );
//                     }
//                   }return SizedBox();
        
//                 } 
//               );
//         }
           
//         ));
//           }
        
    
    
//   }

