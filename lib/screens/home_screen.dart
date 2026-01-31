import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to the Home Screen',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            ElevatedButton(
              onPressed: () {
                logger.d('[ElevatedButton] Button Pressed');
              },
              style: ButtonStyle(
                textStyle: WidgetStateProperty.all(
                  const TextStyle(fontSize: 18),
                ),
              ),
              child: const Text('Press Me'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          logger.d('[FloatingActionButton] Button Pressed');
        },
        tooltip: "Soy un botón flotante",
        child: const Icon(Icons.add),
      ),
    );
  }
}
