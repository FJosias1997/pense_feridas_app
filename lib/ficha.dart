import 'package:flutter/material.dart';
import 'package:victoria_form/cirurgico_model.dart';
import 'package:victoria_form/conduta1.dart';
import 'package:victoria_form/conduta2.dart';
import 'package:victoria_form/conduta3.dart';
import 'package:victoria_form/conduta4.dart';
import 'package:victoria_form/conduta5.dart';
import 'package:victoria_form/conduta6.dart';
import 'package:victoria_form/conduta7.dart';
import 'package:victoria_form/conduta8.dart';
import 'package:victoria_form/conduta9.dart';
import 'package:victoria_form/conduta10.dart';
import 'package:victoria_form/conduta11.dart';
import 'package:victoria_form/conduta12.dart';
import 'package:victoria_form/conduta13.dart';

class FichaPage extends StatefulWidget {
  final CirurgicoModel? cirurgico;

  const FichaPage({Key? key, this.cirurgico}) : super(key: key);

  @override
  _FichaPageState createState() => _FichaPageState();
}

class _FichaPageState extends State<FichaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ficha do Paciente"),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          //Codigo das informações
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Nome do Paciente:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.nomePaciente!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ), //final da primeira row
                        Container(
                          //segunda row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Data de Nascimento:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.dataNascimento!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //final segunda row
                        SizedBox(height: 20),
                        Container(
                          //terceira row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Tempo de Internação:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.tempoInternacao!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //final terceira row
                        SizedBox(height: 20),
                        Container(
                          //quarta row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Comorbidades:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.comorbidades!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //final quarta row
                        SizedBox(height: 20),
                        Container(
                          //quinta row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Fatores de Risco:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.fatoresRisco!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //final quinta row
                        SizedBox(height: 20),
                        Container(
                          //sexta row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Classificação:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.classificacao!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ), //final sexta row
                        SizedBox(height: 20),
                        Container(
                          //setima row
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  "Complexidade:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      decoration: TextDecoration.underline),
                                ),
                              ),
                              SizedBox(width: 20),
                              Flexible(
                                child: Container(
                                  child: Text(
                                    widget.cirurgico!.complexidade!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ), //final setima row
                  SizedBox(height: 20),
                  Container(
                    //oitava row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Localização:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.localizacao!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final oitava row
                  SizedBox(height: 20),
                  Container(
                    //nona row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Exsudato:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.exsudato!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final nona row
                  SizedBox(height: 20),
                  Container(
                    //nona row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Volume de Exsudato:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.volumeexsudato!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final nona row
                  SizedBox(height: 20),
                  Container(
                    //decima row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Tecidos:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.tecidos!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final decima row
                  SizedBox(height: 20),
                  Container(
                    //11 row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Bordas:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.bordas!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final 11 row
                  SizedBox(height: 20),
                  Container(
                    //12 row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Comprimento:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.comprimento!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final 12 row
                  SizedBox(height: 20),
                  Container(
                    //13 row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Profundidade:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.profundidade!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final 13 row
                  SizedBox(height: 20),
                  Container(
                    //14 row
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Sinais de Infecção:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.sinaisInfeccao!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //final 14 row
                  SizedBox(height: 20),
                  Container(
                    //Codigo das informações
                    child: Row(
                      children: [
                        Container(
                          child: Text(
                            "Dor:",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 17,
                                decoration: TextDecoration.underline),
                          ),
                        ),
                        SizedBox(width: 20),
                        Flexible(
                          child: Container(
                            child: Text(
                              widget.cirurgico!.dor!,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  //onde vou editar
                  Container(
                    child: _buildResult(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResult() {
    if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
        widget.cirurgico!.complexidade! == "Simples") {
      return Conduta1();
    } else if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
        widget.cirurgico!.tecidos! == "Esfacelo" &&
        widget.cirurgico!.volumeexsudato! == "Pouco (Até 5 Gazes Molhadas)" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta2();
    } else if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
        widget.cirurgico!.tecidos! == "Esfacelo" &&
        widget.cirurgico!.volumeexsudato! ==
            "Moderado (De 5 A 10 Gazes Molhadas)" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta3();
    } else if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
        widget.cirurgico!.tecidos! == "Esfacelo" &&
        widget.cirurgico!.volumeexsudato! ==
            "Acentuado (Mais De 10 Gazes Molhadas)" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta4();
    } else if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
            widget.cirurgico!.tecidos! == "Esfacelo" &&
            widget.cirurgico!.exsudato! == "Piosanguinolento" ||
        widget.cirurgico!.exsudato! == "Purulento" &&
            widget.cirurgico!.volumeexsudato! ==
                "Acentuado (Mais De 10 Gazes Molhadas)" &&
            widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta5();
    } ////// PELO AMORDI CARA!!!!! LÊ ESSA DROGAAAAAAAAA!!!!
    else if (widget.cirurgico!.classificacao! == "Primeira Intenção" &&
        widget.cirurgico!.tecidos! == "Necrose Seca" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta6();
      //read
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
        widget.cirurgico!.exsudato! == "Sanguinolento" &&
        widget.cirurgico!.volumeexsudato! ==
            "Moderado (De 5 A 10 Gazes Molhadas)" &&
        widget.cirurgico!.tecidos! == "Granulação" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta7();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
            widget.cirurgico!.exsudato! == "Sanguinolento" ||
        widget.cirurgico!.exsudato! == "Seroso" &&
            widget.cirurgico!.volumeexsudato! ==
                "Pouco (Até 5 Gazes Molhadas)" &&
            widget.cirurgico!.tecidos! == "Granulação" &&
            widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta8();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
            widget.cirurgico!.exsudato! == "Purulento" &&
            widget.cirurgico!.volumeexsudato! ==
                "Moderado (De 5 A 10 Gazes Molhadas)" ||
        widget.cirurgico!.volumeexsudato! ==
                "Acentuado (Mais De 10 Gazes Molhadas)" &&
            widget.cirurgico!.tecidos! == "Esfacelo" &&
            widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta9();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
            widget.cirurgico!.exsudato! == "Purulento" &&
            widget.cirurgico!.volumeexsudato! ==
                "Moderado (De 5 A 10 Gazes Molhadas)" ||
        widget.cirurgico!.volumeexsudato! ==
                "Acentuado (Mais De 10 Gazes Molhadas)" &&
            widget.cirurgico!.tecidos! == "Esfacelo" &&
            widget.cirurgico!.profundidade! == "Cavitária" ||
        widget.cirurgico!.profundidade! == "Área de Descolamento" &&
            widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta10();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
            widget.cirurgico!.tecidos! == "Esfacelo" &&
            widget.cirurgico!.exsudato! == "Piosanguinolento" &&
            widget.cirurgico!.volumeexsudato! ==
                "Moderado (De 5 A 10 Gazes Molhadas)" ||
        widget.cirurgico!.volumeexsudato! ==
                "Acentuado (Mais De 10 Gazes Molhadas)" &&
            widget.cirurgico!.sinaisInfeccao?.isEmpty == false &&
            widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta11();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
        widget.cirurgico!.tecidos! == "Necrose Seca" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta12();
    } else if (widget.cirurgico!.classificacao! == "Segunda Intenção" &&
        widget.cirurgico!.tecidos! == "Esfacelo" &&
        widget.cirurgico!.complexidade! == "Complexa") {
      return Conduta13();
    }

    return SizedBox.shrink();
  }

  // Seu doido!!!!!!!
}
