import 'package:counter_bloc/Bloc/counter_bloc.dart';
import 'package:counter_bloc/Bloc/counter_events.dart';
import 'package:counter_bloc/Bloc/counter_state.dart';
import 'package:counter_bloc/Cubit/counter_cubit.dart';
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
          'cubit Example',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Counter Cubit Value',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            const SizedBox(height: 20),
            BlocProvider(
              create: (context) => CounterCubit(),
              child: Counterbody(),
            ),
            const SizedBox(height: 40),
            const Text(
              'Counter Bloc Value',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
            const SizedBox(height: 20),
            BlocProvider(
              create: (context) => CounterBloc(),
              child: CounterBody2(),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterBody2 extends StatelessWidget {
  const CounterBody2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(IncrementEvent());
            print(context.read<CounterBloc>().state.toString());
          },
          child: const Text('+'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(ResetEvent());
            context.read<CounterBloc>().add(GetNumberEvent());
            print(context.read<CounterBloc>().state.toString());
          },
          child: Text(context.watch<CounterBloc>().state.counter.toString()),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            context.read<CounterBloc>().add(DecrementEvent());
            print(context.read<CounterBloc>().state.toString());
          },
          child: const Text('-'),
        ),
      ],
    );
  }
}

class Counterbody extends StatelessWidget {
  const Counterbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            context.read<CounterCubit>().increment();
            print(context.read<CounterCubit>().state.toString());
          },
          child: const Text('+'),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            context.read<CounterCubit>().reset();
            context.read<CounterCubit>().getnumber();
          },
          child: Text(context.watch<CounterCubit>().state.counter.toString()),
        ),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () {
            context.read<CounterCubit>().decrement();
            print(context.read<CounterCubit>().state.toString());
          },
          child: const Text('-'),
        ),
      ],
    );
  }
}
