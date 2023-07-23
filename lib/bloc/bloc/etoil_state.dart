part of 'etoil_bloc.dart';

@immutable
abstract class EtoilState {
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

class TotalEtoil extends EtoilState{
  final double Total;

  TotalEtoil({required this.Total});
}