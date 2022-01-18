import 'package:bloc/bloc.dart';

enum CounterEvents {increment, decrement}

class CounterBlocStateEvent extends Bloc<CounterEvents, int>{
  CounterBlocStateEvent() : super(0);



  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvents event) async*{
    // TODO: implement mapEventToState
    switch(event){
      case CounterEvents.increment:
        yield state + 1;
        break;
      case CounterEvents.decrement:
        yield state - 1;
        break;
    }
  }

}