part of 'etoil_bloc.dart';

@immutable
abstract class EtoilState {
  get colorstate => null;
}

class EtoilInitial extends EtoilState {}

class MousRegeontState1 extends EtoilState {}

class MousRegeontStateExit1 extends EtoilState {}

class MousRegeontStateExit2 extends EtoilState {}

class MousRegeontStateExit3 extends EtoilState {}

class MousRegeontStateExit4 extends EtoilState {}

class MousRegeontStateExit5 extends EtoilState {}

class MousRegeontState2 extends EtoilState {}

class MousRegeontState3 extends EtoilState {}

class MousRegeontState4 extends EtoilState {}

class MousRegeontState5 extends EtoilState {}

class MousPressedState1 extends EtoilState {}

class MousPressedState2 extends EtoilState {}

class MousPressedState3 extends EtoilState {}

class MousPressedState4 extends EtoilState {}

class MousPressedState5 extends EtoilState {}
class TotalState extends EtoilState{
  final double total;

  TotalState({required this.total});
}
