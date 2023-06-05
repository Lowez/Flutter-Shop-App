// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../providers/counter.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final provider = CounterProvider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Exemplo contador'),
        centerTitle: true,
      ),
      body: Row(
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.increment();
              });
            },
            icon: Icon(Icons.add),
          ),
          Text(provider?.state.value.toString() ?? '0'),
          IconButton(
            onPressed: () {
              setState(() {
                provider?.state.decrement();
              });
            },
            icon: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
