import 'package:flutter/material.dart';

class Conduta5 extends StatefulWidget {
  const Conduta5({Key? key}) : super(key: key);

  @override
  _Conduta5State createState() => _Conduta5State();
}

class _Conduta5State extends State<Conduta5> {
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
        Text("ou solução de PHMB",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("2 -> Alginato de cálcio com placa.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: Depende da saturação",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("3 -> Hidrofibra com prata",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 1 a 7 dias, dependendo da saturação",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
