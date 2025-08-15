import 'package:flutter/material.dart';

class Conduta12 extends StatefulWidget {
  const Conduta12({Key? key}) : super(key: key);

  @override
  _Conduta12State createState() => _Conduta12State();
}

class _Conduta12State extends State<Conduta12> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SingleChildScrollView(
      child: Column(children: [
        Text("Terapia Proposta:",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 28)),
        SizedBox(height: 10),
        Text("1 -> Limpeza",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("2 -> Colagenase",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("3 -> Verificar se pode realizar Square",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("4 -> Verificar se pode fazer desbridamento.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
