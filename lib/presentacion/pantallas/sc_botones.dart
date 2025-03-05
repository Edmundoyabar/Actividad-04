import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PantallaBotones extends StatelessWidget{
  static const String nombre= 'botones_pantalla';
  const PantallaBotones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones de la pantalla'),
      ),
      body:const _BotonesMostrar(),
        floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: (){
          context.pop();
        },
        ),
    );
  }
}

class _BotonesMostrar extends StatelessWidget{
  const _BotonesMostrar();
  @override
  Widget build(BuildContext context) {
    final colores = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text ('Boton 01')),
            const ElevatedButton(onPressed: null, child: Text('Boton 01 desabilitado ')),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Boton con icono'),
            ),
            
            FilledButton(onPressed: (){}, child: const Text('Boton 02')),
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.accessibility_new),
              label: const Text('boton 02 con icono'),
            ),

            OutlinedButton(onPressed: (){}, child: const Text('Texto')),
            OutlinedButton.icon(
              onPressed: (){}, 
              label: const Text('Outline Icon'),
              icon: const Icon(Icons.terminal)
              ),
            TextButton(onPressed: (){}, child: const Text('Texto')),
            TextButton.icon(onPressed: (){}, 
            icon: const Icon(Icons.account_box_outlined),
            label: const Text('Texto e Icono'),
            ),
            CustomBoton(),

            IconButton(onPressed: (){}, icon: const Icon(Icons.app_registration)),
            IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.app_registration_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colores.primary),
                iconColor: const MaterialStatePropertyAll(Colors.white),
              ),
              )
          ],
        )
      ),
    );
  }
}

class CustomBoton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    final colores=Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colores.primary,
        child: InkWell(
          onTap: (){},
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('hola mundo', style: TextStyle(color: Colors.white),),
            ),
        ),
      ),
    );
  }
}