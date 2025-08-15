import 'package:flutter/material.dart';

class Conduta10 extends StatefulWidget {
  const Conduta10({Key? key}) : super(key: key);

  @override
  _Conduta10State createState() => _Conduta10State();
}

class _Conduta10State extends State<Conduta10> {
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
      ]),
    ));
  }
}
