import 'package:blocdemo/bloc/counter_bloc.dart';
import 'package:blocdemo/bloc/counter_event.dart';
import 'package:blocdemo/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MaterialApp(
    home: BlocProvider(
      create: (_) => Counterval(),
      child: BlocDemo(),
    ),
  ));
}

class BlocDemo extends StatefulWidget {
  const BlocDemo({Key? key}) : super(key: key);

  @override
  State<BlocDemo> createState() => _BlocDemoState();
}

class _BlocDemoState extends State<BlocDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: BlocBuilder<Counterval, CounterState>(builder: (context, state) {
        if (state is initialval) {
          return _counter(context, 0);
        }
        if (state is updatedval) {
          return _counter(context, state.counter);
        }
        return Container();
      }),
    ));
  }

  Widget _counter(BuildContext context, int count) {
    return Column(
      children: [
        Text(count.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 70,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  context.read<Counterval>().add(IncrementEvent());
                },
                child: Center(
                  child: Text('increase'),
                ),
              ),
            ),
            Container(
              height: 70,
              width: 100,
              child: ElevatedButton(
                onPressed: () {
                  context.read<Counterval>().add(DecrementEvent());
                },
                child: Center(
                  child: Text('decrease'),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
