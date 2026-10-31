import 'package:flutter/material.dart';
import '../data/datos.dart';
import '../widgets/imagen_titulo.dart';

class DetalleScreen extends StatefulWidget {
  const DetalleScreen({super.key});

  @override
  State<DetalleScreen> createState() => _DetalleScreenState();
}

class _DetalleScreenState extends State<DetalleScreen> {
  @override
  Widget build(BuildContext context) {
    final titulo = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final textos = Theme.of(context).textTheme;
    final List episodios = titulo['episodios'];
    final similares = porCategoria(titulo['categoria']).where((t) => t['id'] != titulo['id']).toList();

    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.cast))],
      ),
      body: ListView(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ImagenTitulo(titulo: titulo, ancho: double.infinity, alto: 230),
              const Icon(Icons.play_circle_outline, size: 70, color: Colors.white),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titulo['titulo'], style: textos.headlineLarge),
                Wrap(
                  spacing: 10,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text('98% para ti', style: TextStyle(color: Colors.greenAccent)),
                    Text('${titulo['anio']}'),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      color: Colors.white24,
                      child: Text(titulo['edad']),
                    ),
                    Text(titulo['duracion']),
                    const Icon(Icons.hd_outlined, size: 20),
                  ],
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Reproducir'),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.white12, foregroundColor: Colors.white),
                    onPressed: () {},
                    icon: const Icon(Icons.download),
                    label: const Text('Descargar'),
                  ),
                ),
                const SizedBox(height: 12),
                Text(titulo['descripcion'], style: textos.bodyLarge),
                const SizedBox(height: 8),
                Text('Elenco: ${(titulo['reparto'] as List).join(', ')}', style: textos.bodyMedium),
                const SizedBox(height: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _accion(estaEnMiLista(titulo) ? Icons.check : Icons.add, 'Mi lista', () {
                      setState(() => agregarOQuitar(titulo));
                    }),
                    _accion(Icons.thumb_up_alt_outlined, 'Calificar', () {}),
                    _accion(Icons.share, 'Compartir', () {}),
                  ],
                ),
              ],
            ),
          ),
          const Divider(color: Colors.white24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(episodios.isNotEmpty ? 'Episodios' : 'Más títulos similares', style: textos.titleLarge),
          ),
          // Series: lista de episodios con ListTile
          if (episodios.isNotEmpty)
            ...episodios.asMap().entries.map((e) => ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white12,
                    child: Text('${e.key + 1}'),
                  ),
                  title: Text(e.value['titulo']),
                  subtitle: Text(e.value['duracion']),
                  trailing: const Icon(Icons.download_outlined),
                ))
          // Peliculas: lista de similares
          else
            ...similares.map((t) => ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: ImagenTitulo(titulo: t, ancho: 45, alto: 65),
                  ),
                  title: Text(t['titulo']),
                  subtitle: Text('${t['tipo']} • ${t['anio']}'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => Navigator.pushReplacementNamed(context, '/detalle', arguments: t),
                )),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _accion(IconData icono, String texto, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icono),
          const SizedBox(height: 4),
          Text(texto, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}
