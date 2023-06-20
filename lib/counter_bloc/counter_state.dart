class CounterState {
  int counter;

  CounterState({required this.counter});
}

class InitCounterState extends CounterState {
  InitCounterState() : super(counter: 0);
}
