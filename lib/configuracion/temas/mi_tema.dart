import 'package:flutter/material.dart';
const listaColores = <Color>[
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.pink,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pinkAccent,
  Colors.yellow,
  Colors.brown,
];

class MiTema {
  final int selectorColor;
  MiTema({this.selectorColor=0})
    :assert(selectorColor>=0 && selectorColor<=11,
      'Seleccionar los colores adeacuado');
  ThemeData verTema()=> ThemeData(
    useMaterial3: true,
    colorSchemeSeed: listaColores[selectorColor],
    appBarTheme: const AppBarTheme(centerTitle: false)
  );
}