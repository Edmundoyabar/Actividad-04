import 'package:go_router/go_router.dart';
import 'package:otrosappc/presentacion/pantallas/sc_inicio.dart';
import 'package:otrosappc/presentacion/pantallas/sc_librerias.dart';

final appRouter=GoRouter(
  initialLocation: '/',
  routes:[
    GoRoute(path: '/',
    builder: (context, state)=>const Pinicio(),
    ),
    GoRoute(path: '/buttons',
    builder: (context, state)=>const PantallaBotones(),
    ),
    GoRoute(path: '/Cards',
    builder: (context, state)=>const PantallaTarjetas(),
    ),
    GoRoute(path: '/Dialogos',
    builder: (context, state)=>const PantallaDialogos(),
    ),
    GoRoute(path: '/cargando',
    builder: (context, state)=>const PantallaCargando(),
    ),
    GoRoute(path: '/Cuadros',
    builder: (context, state)=>const PantallaCuadros(),
    ),
    GoRoute(path: '/Localizaciones',
    builder: (context, state)=>const PantallaLocalizaciones(),
    ),
  ], 
);