import 'package:flutter/material.dart';

class Conduta1 extends StatefulWidget {
  const Conduta1({Key? key}) : super(key: key);

  @override
  _Conduta1State createState() => _Conduta1State();
}

class _Conduta1State extends State<Conduta1> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
            child: Column(children: [
      Text("Terapia Proposta:",
          overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28)),
      SizedBox(height: 10),
      Text("1 -> Limpeza com Soro Fisiológico 0,9%",
          overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      Text("2 -> Cobertura com Gazes Secas",
          overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      Text("Troca: A cada 24 horas.",
          overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
    ])));
  }
}
