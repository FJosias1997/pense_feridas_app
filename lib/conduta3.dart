import 'package:flutter/material.dart';

class Conduta3 extends StatefulWidget {
  const Conduta3({Key? key}) : super(key: key);

  @override
  _Conduta3State createState() => _Conduta3State();
}

class _Conduta3State extends State<Conduta3> {
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
        Text("2 -> Hidrogel",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: De 1 a 3 Dias, dependendo da exsudação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Alginato de Cálcio em fita ou placa",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: Depende da Exsudação",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
