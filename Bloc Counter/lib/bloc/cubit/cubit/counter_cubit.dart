import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());
  int val = 0;

  int getVal() {
    return val;
  }

  increaseCount() {
    val++;
    emit(CounterIncrease());
  }

  decreaseCount() {
    val--;
    emit(CounterDecrease());
  }

  ZeroCount() {
    val = 0;
    emit(CounterZero());
  }
}
