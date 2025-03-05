import 'package:flutter/material.dart';

class PantallaCuadros extends StatelessWidget{
  const PantallaCuadros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuadros de la pantalla'),
      ),
      body:const Placeholder(),
    );
  }
}