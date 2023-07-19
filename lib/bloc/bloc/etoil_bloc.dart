import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'etoil_event.dart';
part 'etoil_state.dart';

class EtoilBloc extends Bloc<EtoilEvent, EtoilState> {
  EtoilBloc() : super(EtoilInitial()) {
    on<EtoilEvent>((event, emit) {
      if(event is FerststarEvent ){
        emit(Ferststar( ));
      }else if(event is SecondStarEvent){
        emit(SecondStar());
      }else if(event is TertStarEvent){
        emit(TertStar());
      }else if(event is FourthStarEvent){
        emit(FourthStar());
      }else if(event is FifthStarEvent){
        emit(FifthStar());
      }
    });
  }
}
