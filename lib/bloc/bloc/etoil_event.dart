part of 'etoil_bloc.dart';

@immutable
abstract class EtoilEvent {}
class NothingEvent extends EtoilEvent{}

class MousRegeontEvent1 extends EtoilEvent{}
class MousRegeontEvent2 extends EtoilEvent{}
class MousRegeontEvent3 extends EtoilEvent{}
class MousRegeontEvent4 extends EtoilEvent{}
class MousRegeontEvent5 extends EtoilEvent{}

class MousRegeontExitEvent1 extends EtoilEvent{}
class MousRegeontExitEvent2 extends EtoilEvent{}
class MousRegeontExitEvent3 extends EtoilEvent{}
class MousRegeontExitEvent4 extends EtoilEvent{}
class MousRegeontExitEvent5 extends EtoilEvent{}


class Total1 extends EtoilEvent{
  final double Total;

  Total1({required this.Total});
}
class Total2 extends EtoilEvent{
    final double Total;

  Total2({required this.Total});
}
class Total3 extends EtoilEvent{
    final double Total;

  Total3({required this.Total});
}
class Total4 extends EtoilEvent{
    final double Total;

  Total4({required this.Total});
}

