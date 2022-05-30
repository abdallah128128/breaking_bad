part of 'char_cubit.dart';

@immutable
abstract class CharState {}

class CharInitial extends CharState {}

class CharSuccessLoaded extends CharState {
  final List<CharModel> char;
  CharSuccessLoaded(this.char);
}

