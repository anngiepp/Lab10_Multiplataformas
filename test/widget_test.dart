import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:labxy/data/datos.dart';
import 'package:labxy/screens/mi_lista_screen.dart';
import 'package:labxy/screens/perfiles_screen.dart';
import 'package:labxy/theme.dart';

// Pruebas de interfaz
void main() {
  testWidgets('pantalla de perfiles muestra los 4 perfiles', (tester) async {
    await tester.pumpWidget(MaterialApp(theme: temaApp, home: const PerfilesScreen()));

    expect(find.text('¿Quién está viendo?'), findsOneWidget);
    expect(find.text('LABFLIX'), findsOneWidget);
    for (final p in perfiles) {
      expect(find.text(p['nombre']), findsOneWidget);
    }
  });

  testWidgets('mi lista vacia muestra mensaje', (tester) async {
    miLista.clear();
    await tester.pumpWidget(MaterialApp(theme: temaApp, home: const MiListaScreen()));

    expect(find.text('Todavía no agregaste nada 🍿'), findsOneWidget);
  });

  testWidgets('mi lista muestra un ListTile y se puede borrar', (tester) async {
    miLista
      ..clear()
      ..add(titulos[0]); // tiene imagen local
    await tester.pumpWidget(MaterialApp(theme: temaApp, home: const MiListaScreen()));

    expect(find.byType(ListTile), findsOneWidget);
    expect(find.text('Sombras de Lima'), findsOneWidget);

    await tester.tap(find.byIcon(Icons.delete_outline));
    await tester.pump();

    expect(find.byType(ListTile), findsNothing);
    expect(miLista.isEmpty, true);
  });
}
