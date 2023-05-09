import 'package:blocdemo/bloc/counter_event.dart';
import 'package:blocdemo/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterval extends Bloc<CounterEvent, CounterState> {
  int count = 0;

  Counterval() : super(initialval()) {
    on<IncrementEvent>(increaseval);
    on<DecrementEvent>(decreaseval);
  }

  increaseval(IncrementEvent event,Emitter<CounterState> emit) async {
    count = count + 1;
    emit(updatedval(count));
  }

  decreaseval(DecrementEvent event,Emitter<CounterState> emit) async {
     count = count - 1;
    emit(updatedval(count));
  }
}
