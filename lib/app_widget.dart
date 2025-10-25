import 'package:flutter/material.dart';
import 'package:pense_feridas_app/pages/ficha/ficha_page.dart';
import 'package:pense_feridas_app/theme/app_theme.dart';

import 'pages/avaliacao_feridas/avaliacao_feridas_page.dart';
import 'pages/form_cirurgico/cirurgico_form_page.dart';
import 'pages/complicacoes/complicacoes_page.dart';
import 'pages/conceitos/conceitos_page.dart';
import 'pages/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pense Feridas',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cirurgico_form': (context) => CirurgicoPage(),
        '/complicacoes': (context) => ComplicacoesPage(),
        '/conceitos': (context) => ConceitosPage(),
        '/avaliacaoferidas': (context) => AvaliacoesFeridasPage(),
        '/ficha': (context) => FichaPage(),
      },
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: ThemeMode.system,
    );
  }
}
