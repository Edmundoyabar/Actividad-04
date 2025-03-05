import 'package:flutter/material.dart';
import 'package:otrosappc/configuracion/rutas/router.dart';
import 'package:otrosappc/configuracion/temas/mi_tema.dart';

void main() {
  runApp(const MiAplicativo());
}

class MiAplicativo extends StatelessWidget {
  const MiAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Diversos Aplicativos',
      debugShowCheckedModeBanner: false,
      theme: MiTema(selectorColor:3).verTema(),
    );
  }
}
