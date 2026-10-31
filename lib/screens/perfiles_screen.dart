import 'package:flutter/material.dart';
import '../data/datos.dart';
import '../theme.dart';

class PerfilesScreen extends StatelessWidget {
  const PerfilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LABFLIX', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 34, color: rojo)),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.edit))],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('¿Quién está viendo?', style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontSize: 24)),
            const SizedBox(height: 30),
            Wrap(
              spacing: 30,
              runSpacing: 25,
              alignment: WrapAlignment.center,
              children: perfiles.map((p) => _perfil(context, p)).toList(),
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add_circle_outline, color: Colors.white54),
                SizedBox(width: 8),
                Text('Agregar perfil'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _perfil(BuildContext context, Map<String, dynamic> perfil) {
    return GestureDetector(
      onTap: () => Navigator.pushReplacementNamed(context, '/home', arguments: perfil),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(perfil['imagen'], width: 110, height: 110),
          ),
          const SizedBox(height: 8),
          Text(perfil['nombre'], style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
