import 'package:flutter/material.dart';

class Conduta9 extends StatefulWidget {
  const Conduta9({Key? key}) : super(key: key);

  @override
  _Conduta9State createState() => _Conduta9State();
}

class _Conduta9State extends State<Conduta9> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(children: [
        Text("Terapia Proposta:",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28)),
        SizedBox(height: 10),
        Text("1 -> Limpeza com Soro Fisiológico 0,9%",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Ou solução de PHMB",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("2 -> Creme barreira em área perilesional.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("3 -> Alginato de cálcio com prata.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Hidrofibra com prata",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("4 -> Espuma de poliuretano com prata.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
