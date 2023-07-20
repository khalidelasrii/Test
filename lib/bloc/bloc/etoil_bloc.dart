import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'etoil_event.dart';
part 'etoil_state.dart';

class EtoilBloc extends Bloc<EtoilEvent, EtoilState> {
  EtoilBloc({dynamic}) : super(EtoilInitial()) {
    on<EtoilEvent>((event, emit) {
   
    });
  }
}
