import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'faild_event.dart';
part 'faild_state.dart';

class FaildBloc extends Bloc<FaildEvent, FaildState> {
  FaildBloc() : super(FaildInitial()) {
    on<FaildEvent>((event, emit) {
      if (event is LoadingDataEvent) {
        emit(const RefreshProgressIndicator() as FaildState);
      }
    });
  }
}
