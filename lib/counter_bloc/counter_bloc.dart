import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_counter_app/counter_bloc/counter_event.dart';
import 'package:flutter_bloc_counter_app/counter_bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitCounterState()) {
    on<IncrementCount>(_incrementCounter);
    on<DecrementCount>(_decrementCount);
  }
  _incrementCounter(IncrementCount event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter + 1));
    print('Positive counter was clicked');
  }
  // on<IncrementCount>((event, emit) {
  // emit(CounterState(counter: state.counter + 1));
  // });

  _decrementCount(DecrementCount event, Emitter<CounterState> emit) {
    emit(CounterState(counter: state.counter - 1));
    print("Negative counter was clicked");
  }
}
