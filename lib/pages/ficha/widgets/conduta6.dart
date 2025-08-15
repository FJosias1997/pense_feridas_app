import 'package:flutter/material.dart';

class Conduta6 extends StatefulWidget {
  const Conduta6({Key? key}) : super(key: key);

  @override
  _Conduta6State createState() => _Conduta6State();
}

class _Conduta6State extends State<Conduta6> {
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
        Text("2 -> Hidrogel: 1 a 3 dias,",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("dependendo da saturação.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
