import 'package:flutter/material.dart';
import 'imagen_titulo.dart';

// Card de cada pelicula/serie en las filas horizontales
class PosterCard extends StatelessWidget {
  final Map<String, dynamic> titulo;

  const PosterCard({super.key, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/detalle', arguments: titulo),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Stack(
          children: [
            ImagenTitulo(titulo: titulo, ancho: 120, alto: 180),
            // etiqueta para saber si la imagen es local o de la nube
            Positioned(
              top: 4,
              right: 4,
              child: Icon(
                titulo['local'] == true ? Icons.phone_android : Icons.cloud,
                size: 14,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
