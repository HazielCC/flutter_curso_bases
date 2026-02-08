import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static final logger = Logger();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Ir a Counter Screen'),
            onTap: () {
              logger.d('Navegando a Counter Screen');
              Navigator.pushNamed(context, '/counter');
            },
          ),

          SizedBox(height: 10),

          ListTile(
            title: const Text('Ir a News Screen'),
            onTap: () {
              logger.d('Navegando a News Screen');
              Navigator.pushNamed(context, '/news');
            },
          ),

          ListTile(
            title: const Text('Ir a Faker Screen'),
            onTap: () {
              logger.d('Navegando a Faker Screen');
              Navigator.pushNamed(context, '/faker');
            },
          ),
        ],
      ),
    );
  }
}
