import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/bloc/bloc/etoil_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Color whitecolor = Colors.black;
    Color ambercolor = Colors.amber;
  var ferstivent = FerststarEvent();
    var secondEvent = SecondStarEvent();
    var tertEvent = TertStarEvent();
    var fourthEvent = FourthStarEvent();
    var fifthEvent = FifthStarEvent();
    return Scaffold(body:BlocBuilder<EtoilBloc,EtoilState>(builder: (context,State){
              if(State is EtoilInitial){
                return Row(children: [EtoilView(color :whitecolor,eventComme: ferstivent),EtoilView(color :whitecolor,eventComme: secondEvent,),EtoilView(color :whitecolor,eventComme: tertEvent,),EtoilView(color :whitecolor,eventComme: fourthEvent,),EtoilView(color :whitecolor,eventComme: fifthEvent,)],);
              }else if(State is Ferststar){
                return Row(children: [EtoilView(color :ambercolor,eventComme: ferstivent,),EtoilView(color :whitecolor,eventComme: secondEvent,),EtoilView(color :whitecolor,eventComme: tertEvent,),EtoilView(color :whitecolor,eventComme: fourthEvent,),EtoilView(color :whitecolor,eventComme: fifthEvent,)],);
              }else if(State is SecondStar){
                return Row(children: [EtoilView(color :ambercolor,eventComme: ferstivent,),EtoilView(color :ambercolor,eventComme: secondEvent,),EtoilView(color :whitecolor,eventComme: tertEvent,),EtoilView(color :whitecolor,eventComme: fourthEvent,),EtoilView(color :whitecolor,eventComme: fifthEvent,)],);
          
              }else if(State is TertStar){
                           return Row(children: [EtoilView(color :ambercolor,eventComme: ferstivent,),EtoilView(color :ambercolor,eventComme: secondEvent,),EtoilView(color :ambercolor,eventComme: tertEvent,),EtoilView(color :whitecolor,eventComme: fourthEvent,),EtoilView(color :whitecolor,eventComme: fifthEvent,)],);
          
          
              }else if(State is FourthStar){
                          return Row(children: [EtoilView(color :ambercolor,eventComme: ferstivent,),EtoilView(color :ambercolor,eventComme: secondEvent,),EtoilView(color :ambercolor,eventComme: tertEvent,),EtoilView(color :ambercolor,eventComme: fourthEvent,),EtoilView(color :whitecolor,eventComme: fifthEvent,)],);
          
          
              }else if(State is FifthStar){
                          return Row(children: [EtoilView(color :ambercolor,eventComme: ferstivent,),EtoilView(color :ambercolor,eventComme: secondEvent,),EtoilView(color :ambercolor,eventComme: tertEvent,),EtoilView(color :ambercolor,eventComme: fourthEvent,),EtoilView(color :ambercolor,eventComme: fifthEvent,)],);
          
              } return const SizedBox();
          
            }),)
;
  }
}

class EtoilView extends StatelessWidget {
  EtoilView({super.key,required this.color,required this.eventComme});
  final Color color;
  final  eventComme;
  bool mousetop =false;
  

  @override
  Widget build(BuildContext context) {
    return MouseRegion(onEnter: (event) {
      mousetop=true;
    },
    onExit: (event) {
      mousetop = false;
    },child: Padding(padding: EdgeInsets.symmetric(horizontal: 16),child: IconButton(onPressed: (){BlocProvider.of<EtoilBloc>(context).add(eventComme);}, icon:Icon(Icons.star,color: color,size:30,))))  ;
  }
}