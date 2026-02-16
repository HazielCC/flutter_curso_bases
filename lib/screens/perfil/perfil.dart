import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perfil Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _mostrarDialogo(context),
          child: Text('Mostrar Diálogo'),
        ),
      ),
    );
  }
}

void _mostrarDialogo(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.deepPurple[50],
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.deepPurple,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

        title: Text('Diálogo de Perfil'),
        content: Text('Este es un diálogo desde el perfil.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cerrar'),
          ),
          TextButton(
            onPressed: () {
              // Aquí puedes agregar lógica adicional si es necesario
              Navigator.of(context).pop();
            },
            child: Text('Aceptar'),
          ),
        ],
      );
    },
  );
}
