import 'package:flutter_test/flutter_test.dart';
import 'package:labxy/data/datos.dart';

// Pruebas unitarias de la logica de listas y mapas
void main() {
  setUp(() => miLista.clear());

  test('hay 12 titulos y 4 perfiles', () {
    expect(titulos.length, 12);
    expect(perfiles.length, 4);
  });

  test('cada categoria tiene 3 titulos', () {
    for (final c in categorias) {
      expect(porCategoria(c).length, 3);
    }
  });

  test('buscar no distingue mayusculas', () {
    final r = buscar('lima');
    expect(r.length, 1);
    expect(r.first['titulo'], 'Sombras de Lima');
  });

  test('buscar vacio devuelve todo', () {
    expect(buscar('').length, titulos.length);
  });

  test('agregar y quitar de mi lista', () {
    final t = titulos[3];
    agregarOQuitar(t);
    expect(estaEnMiLista(t), true);
    agregarOQuitar(t);
    expect(estaEnMiLista(t), false);
  });

  test('hay imagenes locales y de la nube', () {
    expect(titulos.any((t) => t['local'] == true), true);
    expect(titulos.any((t) => t['local'] == false), true);
  });
}
