part of 'faild_bloc.dart';

@immutable
abstract class FaildEvent {}

class LoadingDataEvent extends FaildEvent {}

class LoadidDataEvent extends FaildEvent {}
