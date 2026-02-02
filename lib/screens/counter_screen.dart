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
        backgroundColor: Color.fromARGB(255, 54, 175, 245),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // * Mostrar el valor actual del contador
            Text('$_counter', style: TextStyle(fontSize: 40), softWrap: true),
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

            // * Separador
            const SizedBox(height: 20),

            // * Botones para incrementar y decrementar el contador
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter--;
                      logger.i('Counter decremented to $_counter');
                    });
                  },

                  child: const Text('Decrement'),
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _counter++;
                      logger.i('Counter incremented to $_counter');
                    });
                  },

                  child: const Text('Increment'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
