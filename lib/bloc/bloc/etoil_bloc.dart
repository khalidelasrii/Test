import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'etoil_event.dart';
part 'etoil_state.dart';

double total1 = 0;
double total2 = 0;
double total3 = 0;
double total4 = 0;
double total5 = 0;
double total = 0;

class EtoilBloc extends Bloc<EtoilEvent, EtoilState> {
  EtoilBloc({dynamic}) : super(EtoilInitial()) {
   

    on<EtoilEvent>((event, emit) {
      emit(EtoilInitial());
////////////Star 1
      if (event is MousRegeontEvent1) {
      emit(MousRegeontState1());
      } else if(event is MousRegeontExitEvent1){
        emit(MousRegeontStateExit1());
      }else if(event is PressedStar1){
        total1 = 1;
        emit(MousPressedState1());
      }
////////////Star 2
      else if (event is MousRegeontEvent2) {
        emit(MousRegeontState2());
      }else if(event is MousRegeontExitEvent2){
        emit(MousRegeontStateExit2());}
      else if (event is PressedStar2) { 
        emit(MousPressedState2());
        total2 = 2;
      }
////////////Star 3
      else if (event is MousRegeontEvent3) {
        emit(MousRegeontState3());
      } else if(event is MousRegeontExitEvent3){
        emit(MousRegeontStateExit3());
      }else if (event is PressedStar3) {
        total3 = 3;
        
        emit(MousPressedState3());
      }
/////////////Star 4
      else if (event is MousRegeontEvent4) {
        emit(MousRegeontState4());
      } else if(event is MousRegeontExitEvent4){
        emit(MousRegeontStateExit4());
      } else if (event is PressedStar4) {
        total4 = 4;
        
        emit(MousPressedState4());
      }
/////////////Star 5
      else if (event is MousRegeontEvent5) {
        emit(MousRegeontState5());
      } else if(event is MousRegeontExitEvent5){
        emit(MousRegeontStateExit5());
      } else if (event is PressedStar5) {
        total5 = 5;
                

        emit(MousPressedState5());
      }
      if(total == 0){
      total = total1+total2+total3+total4+total5;

      }
      print('total = $total');
    });
  }
}
