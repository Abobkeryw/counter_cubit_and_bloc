class CountercubitState {
  int counter;
  CountercubitState({required this.counter});

  CountercubitState copyWith({int? counter}) {
    return CountercubitState(counter: counter ?? this.counter);
  }
}
