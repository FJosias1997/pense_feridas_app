import 'package:flutter/material.dart';

class Conduta8 extends StatefulWidget {
  const Conduta8({Key? key}) : super(key: key);

  @override
  _Conduta8State createState() => _Conduta8State();
}

class _Conduta8State extends State<Conduta8> {
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
        Text("2 -> Gaze com pretolatum ou gazes com rayon.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
        Text("Troca: 24 horas.",
            overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 18)),
      ]),
    ));
  }
}
