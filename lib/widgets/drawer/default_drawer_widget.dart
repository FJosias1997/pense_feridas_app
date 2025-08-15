import 'package:flutter/material.dart';
import 'package:victoria_form/pages/avaliacao_feridas/avaliacao_feridas_page.dart';
import 'package:victoria_form/pages/complicacoes/complicacoes_page.dart';
import 'package:victoria_form/pages/conceitos/conceitos_page.dart';

class DefaultDrawerWidget extends StatelessWidget {
  const DefaultDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/menu.jpg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.rectangle,
            ),
            child: const Text(
              'Pense Feridas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          ListTile(
            title: const Text('Conceitos e Classificações'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConceitosPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Complicações'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComplicacoesPage()),
              );
            },
          ),
          ListTile(
            title: const Text('Avaliação de Feridas'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AvaliacoesFeridasPage(),
                ),
              );
            },
          ),
          ListTile(
            title: const Text('Atualizações'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Referências'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Sobre'),
            onTap: () {
              showAboutDialog(
                context: context,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    'Este aplicativo foi feito com o objetivo de gerar facilidades para os enfermeiros que atuam no cuidado com feridas cirúrgicas complexas.',
                  ),
                ],
                applicationIcon: FlutterLogo(),
                applicationName: 'Sobre o Pense Feridas',
                applicationVersion: '1.0.0',
                applicationLegalese: 'Desenvolvido por Josias Félix Studios',
              );
            },
          ),
        ],
      ),
    );
  }
}
