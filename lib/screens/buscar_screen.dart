import 'package:flutter/material.dart';
import '../data/datos.dart';
import '../widgets/imagen_titulo.dart';

class BuscarScreen extends StatefulWidget {
  const BuscarScreen({super.key});

  @override
  State<BuscarScreen> createState() => _BuscarScreenState();
}

class _BuscarScreenState extends State<BuscarScreen> {
  String texto = '';

  @override
  Widget build(BuildContext context) {
    final resultados = buscar(texto);

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: const InputDecoration(
            hintText: 'Buscar series, películas...',
            border: InputBorder.none,
            prefixIcon: Icon(Icons.search),
          ),
          onChanged: (valor) => setState(() => texto = valor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text('Series y películas (${resultados.length})', style: Theme.of(context).textTheme.titleLarge),
          ),
          Expanded(
            child: resultados.isEmpty
                ? const Center(child: Text('No encontramos ese título'))
                : ListView.builder(
                    itemCount: resultados.length,
                    itemBuilder: (context, i) {
                      final t = resultados[i];
                      return ListTile(
                        leading: ImagenTitulo(titulo: t, ancho: 90, alto: 55),
                        title: Text(t['titulo']),
                        subtitle: Text(t['categoria']),
                        trailing: const Icon(Icons.play_circle_outline),
                        onTap: () => Navigator.pushNamed(context, '/detalle', arguments: t),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
