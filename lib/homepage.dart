import 'package:counter_bloc/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Bloc and Cubit Example',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              child: const Text('+'),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().reset();
              },
              child: Text(
                context.watch<CounterCubit>().state.counter.toString(),
              ),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit>().decrement();
              },
              child: const Text('-'),
            ),
          ],
        ),
      ),
    );
  }
}
