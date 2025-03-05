import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:otrosappc/configuracion/menu/menu_opciones.dart';
//import 'package:go_router/go_router.dart';


class Pinicio extends StatelessWidget{
  const Pinicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter y material 3'),
      ),
      body: const _VistaInicio(),
    );
  }
}

class _VistaInicio extends StatelessWidget{
  const _VistaInicio();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuOpciones.length,
      itemBuilder: (context,index){
        final menuopcion = appMenuOpciones[index];
        return _customLista(menuopcion: menuopcion);
      },
      );
  }
}

class _customLista extends StatelessWidget{
  const _customLista({
    required this.menuopcion,
  });
  final MenuOpciones menuopcion;
  @override
  Widget build(BuildContext context) {
    final colores=Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(menuopcion.icono,color: colores.primary),
      trailing: Icon(Icons.arrow_forward_ios_rounded,color: colores.primary),
      title: Text(menuopcion.titulo),
      subtitle: Text(menuopcion.subtitulo),
      onTap: () {
        //Navigator.pushNamed(context,menuopcion.link);
        context.push(menuopcion.link);
      },
    );
  }
}