import 'package:flutter/material.dart';

class Conduta7 extends StatefulWidget {
  const Conduta7({Key? key}) : super(key: key);

  @override
  _Conduta7State createState() => _Conduta7State();
}

class _Conduta7State extends State<Conduta7> {
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
        Text("2 -> Alginato de Cálcio",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 48 horas dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
