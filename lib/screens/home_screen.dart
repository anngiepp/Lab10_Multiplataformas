import 'package:flutter/material.dart';
import '../data/datos.dart';
import '../theme.dart';
import '../widgets/poster_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // si no llega perfil por la ruta usamos el primero
    final perfil = (ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?) ?? perfiles[0];
    final destacado = titulos[0];

    return Scaffold(
      appBar: AppBar(
        title: const Text('LABFLIX', style: TextStyle(fontFamily: 'BebasNeue', fontSize: 32, color: rojo)),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.pushNamed(context, '/buscar'),
          ),
          GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(context, '/'),
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: Image.asset(perfil['imagen'], width: 30, height: 30),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          // filtros de arriba
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Row(
              children: [
                _chip('Series'),
                _chip('Películas'),
                ActionChip(
                  label: const Text('Mi lista'),
                  onPressed: () => _irA('/milista'),
                ),
              ],
            ),
          ),
          _banner(destacado),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text('Hola, ${perfil['nombre']} 👋', style: Theme.of(context).textTheme.titleMedium),
          ),
          // una fila por cada categoria
          ...categorias.map((c) => _fila(c)),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _chip(String texto) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Chip(label: Text(texto)),
    );
  }

  Widget _banner(Map<String, dynamic> destacado) {
    final enLista = estaEnMiLista(destacado);
    return Stack(
      children: [
        Image.asset('assets/images/banner.png', height: 420, width: double.infinity, fit: BoxFit.cover),
        Container(
          height: 420,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black],
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 0,
          right: 0,
          child: Column(
            children: [
              Text(destacado['titulo'].toString().toUpperCase(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(fontSize: 52)),
              const Text('Suspenso • Policial • Drama'),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _botonIcono(enLista ? Icons.check : Icons.add, 'Mi lista', () {
                    setState(() => agregarOQuitar(destacado));
                  }),
                  ElevatedButton.icon(
                    onPressed: () => _irA('/detalle', destacado),
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Reproducir'),
                  ),
                  _botonIcono(Icons.info_outline, 'Info', () => _irA('/detalle', destacado)),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _botonIcono(IconData icono, String texto, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icono, color: Colors.white),
          Text(texto, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }

  Widget _fila(String categoria) {
    final lista = porCategoria(categoria);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(12, 18, 12, 4),
          child: Text(categoria, style: Theme.of(context).textTheme.titleLarge),
        ),
        SizedBox(
          height: 195,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 6),
            itemCount: lista.length,
            itemBuilder: (context, i) => PosterCard(titulo: lista[i]),
          ),
        ),
      ],
    );
  }

  // al volver de otra pantalla refrescamos por si cambio "Mi lista"
  void _irA(String ruta, [Object? argumentos]) {
    Navigator.pushNamed(context, ruta, arguments: argumentos).then((_) => setState(() {}));
  }
}
