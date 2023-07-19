import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'etoil_event.dart';
part 'etoil_state.dart';

class EtoilBloc extends Bloc<EtoilEvent, EtoilState> {
  EtoilBloc() : super(EtoilInitial()) {
    on<EtoilEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
