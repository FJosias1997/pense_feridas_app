import 'package:flutter/material.dart';

class AppTheme {
  // Cor principal para os botões
  static const Color _buttonColor = Colors.orange;
  // Cor do texto para os botões (preto garante contraste com laranja)
  static const Color _buttonTextColor = Colors.black;

  // Estilo base do botão, para evitar repetição
  static final ButtonStyle _buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: _buttonColor,
    foregroundColor: _buttonTextColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
  );

  // Tema Claro
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Colors.white,
      secondary: Colors.white,
      onSecondary: Colors.black,
      tertiary: _buttonColor,
      onTertiary: _buttonTextColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue, // Fundo azul explícito
      foregroundColor:
          Colors.white, // Texto e ícones brancos (de acordo com o fundo)
      centerTitle: true,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: _buttonStyle),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    cardTheme: const CardTheme(elevation: 1, margin: EdgeInsets.all(8)),
  );

  // Tema Escuro
  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.blue,
      brightness: Brightness.dark,
    ),
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      // No modo escuro, é melhor deixar o M3 definir as cores da AppBar
      // com base no ColorScheme (será um azul escuro com texto claro)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: _buttonStyle),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
    ),
    cardTheme: const CardTheme(elevation: 1, margin: EdgeInsets.all(8)),
  );
}
