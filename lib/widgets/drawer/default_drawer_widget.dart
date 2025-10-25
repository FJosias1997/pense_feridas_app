import 'package:flutter/material.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';
import 'package:pense_feridas_app/pages/avaliacao_feridas/avaliacao_feridas_page.dart';
import 'package:pense_feridas_app/pages/complicacoes/complicacoes_page.dart';
import 'package:pense_feridas_app/pages/conceitos/conceitos_page.dart';
import 'package:pense_feridas_app/widgets/dialogs/show_about_dialog.dart';

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
            child: Text(
              'Pense Feridas',
              style: context.theme.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.surface,
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
            title: const Text('Sobre'),
            onTap: () => ShowAboutDialogService().aboutDialog(context: context),
          ),
        ],
      ),
    );
  }
}
