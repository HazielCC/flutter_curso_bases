import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class CounterScreen extends StatefulWidget {
  // Valor inicial del contador
  final int counter;
  const CounterScreen({super.key, required this.counter});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  // Este es un ejemplo básico de una pantalla de contador.
  late int _counter;
  static final logger = Logger();

  @override
  void initState() {
    super.initState();
    _counter = widget.counter;
    logger.i('CounterScreen initialized with counter: $_counter');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
        backgroundColor: Color.fromARGB(255, 103, 58, 183),
      ),
      body: Center(
        child: Text(
          '$_counter',
          style: TextStyle(fontSize: 40),
          softWrap: true,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
            logger.i('Counter incremented to $_counter');
          });
        },
        tooltip: 'Soy un botón',
        mini: true,
        child: Icon(Icons.add),
      ),
    );
  }
}
