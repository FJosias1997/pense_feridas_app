import 'package:flutter/material.dart';

class Conduta11 extends StatefulWidget {
  const Conduta11({Key? key}) : super(key: key);

  @override
  _Conduta11State createState() => _Conduta11State();
}

class _Conduta11State extends State<Conduta11> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(children: [
        Text("Terapia Proposta:",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28)),
        SizedBox(height: 10),
        Text("1 -> Limpeza com Soro fisiológico 0,9% ou PHMB ",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("2 -> Espuma de poliuretano com prata.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("3 -> Hidrofibra com prata",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
