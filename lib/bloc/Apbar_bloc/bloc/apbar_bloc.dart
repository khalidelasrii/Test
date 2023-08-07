import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'apbar_event.dart';
part 'apbar_state.dart';

class ApbarBloc extends Bloc<ApbarEvent, ApbarState> {
  ApbarBloc() : super(ApbarInitial()) {
    on<ApbarEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
