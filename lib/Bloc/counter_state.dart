class CounterblocState {
  int counter;
  CounterblocState({required this.counter});

  CounterblocState copyWith({int? counter}) {
    return CounterblocState(counter: counter ?? this.counter);
  }
  // do something here
  getnumber() {
    print('getnumber called');
  }
  @override
  String toString() {
    return 'CounterBlocState(counter: $counter)';
  }
}
