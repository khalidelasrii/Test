import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'etoil_event.dart';
part 'etoil_state.dart';

 double T1=0;
    double T2=0;
    double T3=0;
    double T4=0;
    double total = 0;
  
class EtoilBloc extends Bloc<EtoilEvent, EtoilState> {
  EtoilBloc({dynamic}) : super(EtoilInitial()) {

   updatTotale(){
    total = (T1 +T2+T3+T4)/4;
    print('total bloc : $total');
  }
    on<EtoilEvent>((event, emit) {
      emit(EtoilInitial());
       if(event is Total1 ){
          T1=event.Total;
          updatTotale();
          emit(TotalEtoil(Total: total));
      } else if(event is Total2 ){
          
          T2=event.Total;
          updatTotale();
          emit(TotalEtoil(Total: total));
      } else if(event is Total3 ){
          
          T3=event.Total;
          updatTotale();
          emit(TotalEtoil(Total: total));
      } else if(event is Total4 ){
          
          T4=event.Total;
          updatTotale();
          emit(TotalEtoil(Total: total));
      }else if
////////////Star 1
      (event is MousRegeontEvent1) {
      emit(MousRegeontState1());
      } else if(event is MousRegeontExitEvent1){
        emit(MousRegeontStateExit1());
      }
////////////Star 2
      else if (event is MousRegeontEvent2) {
        emit(MousRegeontState2());
      }else if(event is MousRegeontExitEvent2){
        emit(MousRegeontStateExit2());}
    
////////////Star 3
      else if (event is MousRegeontEvent3) {
        emit(MousRegeontState3());
      } else if(event is MousRegeontExitEvent3){
        emit(MousRegeontStateExit3());
      }
/////////////Star 4
      else if (event is MousRegeontEvent4) {
        emit(MousRegeontState4());
      } else if(event is MousRegeontExitEvent4){
        emit(MousRegeontStateExit4());
      } 
/////////////Star 5
      else if (event is MousRegeontEvent5) {
        emit(MousRegeontState5());
      } else if(event is MousRegeontExitEvent5){
        emit(MousRegeontStateExit5());
      } 
    });
  }
}
