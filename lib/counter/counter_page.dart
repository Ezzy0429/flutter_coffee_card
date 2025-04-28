/*
COUNTER PAGE: responsible for providing CounterCubit to CounterView (UI)
- use BlocProvider
*/

import 'package:coffee_card/counter/counter_cubit.dart';
import 'package:coffee_card/counter/counter_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),

      child: BlocListener<CounterCubit, int>(
        listener: (context, state) {
          print('context - $context');
          // show pop up when it reaches 10
          if (state == 10) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(content: Text('10 reached!')),
            );
          }
        },
        child: const CounterView(),
      ),
    );
  }
}
