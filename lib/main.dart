import 'package:bloc_counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => CounterCubit(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloc counter application',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bloc counter application'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).increment();
                },
                icon: const Icon(Icons.add),
              ),
              BlocBuilder<CounterCubit, CounterState>(
                builder: (context, state) {
                  return Text(state.number.toString());
                },
              ),
              IconButton(
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).decrement();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
