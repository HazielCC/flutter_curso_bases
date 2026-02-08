import 'package:flutter/material.dart';
import 'package:flutter_curso_bases/screens/counter/counter_screen.dart';
import 'package:flutter_curso_bases/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 103, 58, 183),
        ),
      ),

      // home: const CounterScreen(counter: 0),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/counter': (context) => const CounterScreen(counter: 0),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
