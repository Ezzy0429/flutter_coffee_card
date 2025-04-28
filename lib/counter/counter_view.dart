/*
COUNTER VIEW: responsible for UI
- use BlocBuilder
*/

import 'package:coffee_card/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Center(
              child: Text(state.toString(), style: TextStyle(fontSize: 50)),
            );
          },
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                print('context2 ------ $context');
                context.read<CounterCubit>().increment();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => context.read<CounterCubit>().decrement(),
              child: const Icon(Icons.remove),
            ),
          ],
        ),
      ],
    );
  }
}
