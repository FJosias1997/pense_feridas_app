import 'package:flutter/material.dart';

class ShowAboutDialogService {
  void aboutDialog({required BuildContext context}) => showAboutDialog(
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
}
