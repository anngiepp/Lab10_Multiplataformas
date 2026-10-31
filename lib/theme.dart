import 'package:flutter/material.dart';

// Colores tipo Netflix
const rojo = Color(0xFFE50914);
const negro = Color(0xFF000000);
const gris = Color(0xFF1F1F1F);

// Tema global de la app
final ThemeData temaApp = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: negro,
  fontFamily: 'Poppins', // letra 1: texto general
  colorScheme: const ColorScheme.dark(
    primary: rojo,
    secondary: Colors.white,
    surface: gris,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: negro,
    foregroundColor: Colors.white,
    elevation: 0,
    centerTitle: false,
  ),
  textTheme: const TextTheme(
    // letra 2: titulos grandes
    headlineLarge: TextStyle(fontFamily: 'BebasNeue', fontSize: 40, color: Colors.white, letterSpacing: 1.5),
    titleLarge: TextStyle(fontFamily: 'BebasNeue', fontSize: 26, color: Colors.white, letterSpacing: 1),
    titleMedium: TextStyle(fontWeight: FontWeight.w600, fontSize: 16, color: Colors.white),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.white70),
    // letra 3: descripciones / frases
    bodyLarge: TextStyle(fontFamily: 'Playfair', fontStyle: FontStyle.italic, fontSize: 16, color: Colors.white),
  ),
  cardTheme: CardThemeData(
    color: gris,
    elevation: 4,
    margin: const EdgeInsets.all(6),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  ),
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.white,
    textColor: Colors.white,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    ),
  ),
);
