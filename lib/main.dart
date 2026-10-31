import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/perfiles_screen.dart';
import 'screens/home_screen.dart';
import 'screens/detalle_screen.dart';
import 'screens/mi_lista_screen.dart';
import 'screens/buscar_screen.dart';

void main() {
  runApp(const LabFlixApp());
}

class LabFlixApp extends StatelessWidget {
  const LabFlixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LabFlix',
      debugShowCheckedModeBanner: false,
      theme: temaApp,
      initialRoute: '/',
      routes: {
        '/': (context) => const PerfilesScreen(),
        '/home': (context) => const HomeScreen(),
        '/detalle': (context) => const DetalleScreen(),
        '/milista': (context) => const MiListaScreen(),
        '/buscar': (context) => const BuscarScreen(),
      },
    );
  }
}
