class CountercubitState {
  int counter;
  CountercubitState({required this.counter});

  CountercubitState copyWith({int? counter}) {
    return CountercubitState(counter: counter ?? this.counter);
  }
  // do something here
  getnumber() {
    print('getnumber called');
  }
  @override
  String toString() {
    return 'CountercubitState(counter: $counter)';
  }
}
