import 'package:flutter/material.dart';

void main() => runApp(const ProgressIndicatorApp());

class ProgressIndicatorApp extends StatelessWidget {
  const ProgressIndicatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PantallaCargando(),
    );
  }
}

class PantallaCargando extends StatelessWidget {
  const PantallaCargando({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla de progreso'),
      ),
      body: const ProgressIndicator(),
    );
  }
}

class ProgressIndicator extends StatefulWidget {
  const ProgressIndicator({super.key});

  @override
  State<ProgressIndicator> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicator>
    with TickerProviderStateMixin {
  late AnimationController circularController;
  late AnimationController linearController;

  @override
  void initState() {
    super.initState();

    // Controller for the circular progress indicator
    circularController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    circularController.repeat(reverse: false);

    // Controller for the linear progress indicator
    linearController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..addListener(() {
        setState(() {});
      });
    linearController.repeat(reverse: false);
  }

  @override
  void dispose() {
    circularController.dispose();
    linearController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Indicador de progreso Circular',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          CircularProgressIndicator(
            value: circularController.value,
            color: colors.primary,
            backgroundColor: colors.primary.withOpacity(0.2), // Shadow effect
            semanticsLabel: 'Indicador de progreso Circular',
          ),
          const SizedBox(height: 40),
          const Text(
            'Circular y linear Controlado',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              CircularProgressIndicator(
                value: circularController.value,
                color: colors.primary,
                backgroundColor: colors.primary.withOpacity(0.2), // Shadow effect
                semanticsLabel: 'Circulo alado del lineal',
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  value: linearController.value,
                  color: colors.primary,
                  backgroundColor: colors.primary.withOpacity(0.2), // Shadow effect
                  semanticsLabel: 'Barra lineal',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
