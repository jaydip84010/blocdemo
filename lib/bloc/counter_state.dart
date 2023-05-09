class CounterState {}

class initialval extends CounterState {

}

class updatedval extends CounterState {
  final int counter;

  updatedval(this.counter);
}

class IncremetState extends CounterState {}

class DecrementState extends CounterState {}
