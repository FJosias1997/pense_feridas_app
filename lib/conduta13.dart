import 'package:flutter/material.dart';

class Conduta13 extends StatefulWidget {
  const Conduta13({Key? key}) : super(key: key);

  @override
  _Conduta13State createState() => _Conduta13State();
}

class _Conduta13State extends State<Conduta13> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(children: [
        Text("Terapia Proposta:",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28)),
        SizedBox(height: 10),
        Text("1 -> Limpeza com Soro fisiológico 0,9%",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("2 -> Hidrogel",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca em 24 horas.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("3 -> Colagenase",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca em 24 horas.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Verificar possibilidade de desbridamento.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
