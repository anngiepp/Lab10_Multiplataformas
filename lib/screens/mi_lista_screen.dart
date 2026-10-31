import 'package:flutter/material.dart';
import '../data/datos.dart';
import '../widgets/imagen_titulo.dart';

class MiListaScreen extends StatefulWidget {
  const MiListaScreen({super.key});

  @override
  State<MiListaScreen> createState() => _MiListaScreenState();
}

class _MiListaScreenState extends State<MiListaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mi lista', style: Theme.of(context).textTheme.titleLarge)),
      body: miLista.isEmpty
          ? const Center(child: Text('Todavía no agregaste nada 🍿'))
          : ListView.builder(
              itemCount: miLista.length,
              itemBuilder: (context, i) {
                final t = miLista[i];
                return Card(
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(8),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(4),
                      child: ImagenTitulo(titulo: t, ancho: 50, alto: 75),
                    ),
                    title: Text(t['titulo']),
                    subtitle: Text('${t['tipo']} • ${t['anio']} • ${t['edad']}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete_outline),
                      onPressed: () => setState(() => miLista.removeAt(i)),
                    ),
                    onTap: () => Navigator.pushNamed(context, '/detalle', arguments: t)
                        .then((_) => setState(() {})),
                  ),
                );
              },
            ),
    );
  }
}
