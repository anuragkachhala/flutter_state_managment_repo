import 'package:bloc/bloc.dart';

/// Event being processed by [CounterBloc].
abstract class CounterEvent {}

/// Notifies bloc to increment state.
class CounterIncrementPressed extends CounterEvent {}

/// Notifies bloc to decrement state.
class CounterDecrementPressed extends CounterEvent {}

class BlocCounterOne extends Bloc<CounterEvent, CounterState> {
  BlocCounterOne() : super(CounterState(counterValue: 0)){
    on<CounterIncrementPressed>((event, emit) => emit(CounterState(counterValue: state.counterValue + 1)));
    on<CounterDecrementPressed>((event, emit) => emit(CounterState(counterValue: state.counterValue - 1)));
  }

  /*@override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.increment:
        yield CounterState(counterValue: state.counterValue + 1);
        break;
      case CounterEvent.decrement:
        yield CounterState(counterValue: state.counterValue - 1);
        break;
    }
  }*/
}

class CounterState {
  int counterValue;

  CounterState({
    required this.counterValue,
  });
}