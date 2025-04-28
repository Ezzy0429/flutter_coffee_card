/*
COUNTER CUBIT: Simplified version of Bloc for easy state management
*/
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  // counstructor: get initial state
  CounterCubit(super.initialState);

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);

  // on state change -> do something
  @override
  void onChange(Change<int> change) {
    super.onChange(change);

    print(change);
  }
}
