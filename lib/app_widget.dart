import 'package:flutter/material.dart';
import 'package:victoria_form/ficha.dart';

import 'avaliacaoferidas.dart';
import 'cirurgico_form.dart';
import 'complicacoes.dart';
import 'conceitos.dart';
import 'home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pense Feridas',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/cirurgico_form': (context) => CirurgicoPage(),
        '/complicacoes': (context) => ComplicacoesPage(),
        '/conceitos': (context) => ConceitosPage(),
        '/avaliacaoferidas': (context) => AvaliacoesFeridasPage(),
        '/ficha': (context) => FichaPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
      ),
    );
  }
}
