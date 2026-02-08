import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News Screen')),
      body: Column(
        children: [
          const Text('Bienvenido a la pantalla de noticias'),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Volver usando Navigator.pop()'),
          ),

          ElevatedButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('No se puede volver atrás')),
                );
              }
            },
            child: const Text(
              'Ir a Counter Screen usando Navigator.pushNamed()',
            ),
          ),
        ],
      ),
    );
  }
}
