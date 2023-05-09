import 'package:flutter_bloc/flutter_bloc.dart';

class CounterQ extends Cubit<int> {
  CounterQ() : super(0);

  increment() {
    emit(state + 1);
  }

  decrement() {
    emit(state - 1);
  }
}
