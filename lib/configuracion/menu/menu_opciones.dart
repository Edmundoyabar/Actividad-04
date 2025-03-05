import 'package:flutter/material.dart';

class MenuOpciones {
  final String titulo;
  final String subtitulo;
  final String link;
  final IconData icono;

  const MenuOpciones({
      required this.titulo,
      required this.subtitulo,
      required this.link,
      required this.icono,
  });
}

const appMenuOpciones = <MenuOpciones>[
  MenuOpciones(
    titulo: 'Botones', 
    subtitulo: 'Varios Botones', 
    link: '/buttons', 
    icono: Icons.south_america_outlined
  ),
  MenuOpciones(
    titulo: 'Tarjetas', 
    subtitulo: 'Varios Tarjetas Cards', 
    link: '/Cards', 
    icono: Icons.credit_card
  ),
  MenuOpciones(
    titulo: 'Dialogos', 
    subtitulo: 'Varios Dialogos', 
    link: '/Dialogos', 
    icono: Icons.cabin_rounded
  ),
  MenuOpciones(
    titulo: 'Cargando', 
    subtitulo: 'Cargando...', 
    link: '/cargando', 
    icono: Icons.downloading
  ),
  MenuOpciones(
    titulo: 'Cuadros', 
    subtitulo: 'Varios cuadros', 
    link: '/cuadros', 
    icono: Icons.add_chart
  ),
  MenuOpciones(
    titulo: 'Localicacion', 
    subtitulo: 'Varias localizaciones', 
    link: '/localizaciones', 
    icono: Icons.add_location_alt_outlined
  ),
];
