part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class CounterIncrease extends CounterState {}

final class CounterDecrease extends CounterState {}

final class CounterZero extends CounterState {}
