import 'package:counter_bloc/Bloc/counter_events.dart';
import 'package:counter_bloc/Bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvents, CounterblocState> {
  CounterBloc() : super(CounterblocState(counter: 0)) {
    on<IncrementEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter + 1));
    });

    on<DecrementEvent>((event, emit) {
      emit(state.copyWith(counter: state.counter - 1));
    });
    on<ResetEvent>((event, emit) {
      emit(CounterblocState(counter: 0));
    });
    on<GetNumberEvent>((event, emit) {
      state.getnumber();
    });
  }
}
