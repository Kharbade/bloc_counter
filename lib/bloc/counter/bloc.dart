import 'package:counterbloc_1/bloc/counter/event.dart';
import 'package:counterbloc_1/bloc/counter/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  // by default CounterState will have counter value as 0 which is being mentioned in CounterState file.
  CounterBloc() : super(const CounterState(/* by default counter: 0 */)) {
    on<IncrementEvent>(_onIncrement);
    on<DecrementEvent>(_onDecrement);
  }

  void _onIncrement(IncrementEvent event, Emitter<CounterState> emit) {
    // emit ----> it's work is to emit(make) the new state on the Tap of the button
    emit(state.copyWith(counter: state.counter + 1));
  }

  void _onDecrement(DecrementEvent event, Emitter<CounterState> emit) {
    // emit ----> it's work is to emit(make) the new state on the Tap of the button
    emit(state.copyWith(counter: state.counter - 1));
  }
}
