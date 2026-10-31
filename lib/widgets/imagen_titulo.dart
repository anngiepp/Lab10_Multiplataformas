import 'package:flutter/material.dart';

// Muestra la imagen local (assets) o de la nube (internet) segun el mapa
class ImagenTitulo extends StatelessWidget {
  final Map<String, dynamic> titulo;
  final double? ancho;
  final double? alto;

  const ImagenTitulo({super.key, required this.titulo, this.ancho, this.alto});

  @override
  Widget build(BuildContext context) {
    if (titulo['local'] == true) {
      return Image.asset(titulo['imagen'], width: ancho, height: alto, fit: BoxFit.cover);
    }
    return Image.network(
      titulo['imagen'],
      width: ancho,
      height: alto,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, progreso) {
        if (progreso == null) return child;
        return Container(
          width: ancho,
          height: alto,
          color: Colors.white10,
          child: const Center(child: CircularProgressIndicator(strokeWidth: 2)),
        );
      },
      errorBuilder: (context, error, stack) => Container(
        width: ancho,
        height: alto,
        color: Colors.white10,
        child: const Icon(Icons.broken_image, color: Colors.white38),
      ),
    );
  }
}
