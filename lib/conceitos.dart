import 'package:flutter/material.dart';

class ConceitosPage extends StatefulWidget {
  @override
  _ConceitosState createState() => _ConceitosState();
}

class _ConceitosState extends State<ConceitosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conceitos e Classificações"),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Conceitos e Classificações',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'As feridas cirúrgicas são consideradas intencionais e agudas,'
                      'fazem parte do processo cirúrgico, iniciam repentinamente, '
                      'e quando não se complicam, duram pouco tempo.'
                      'Podem ser classificadas de acordo com a intenção e o grau de contaminação.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 15),
                  Text(
                    'De Acordo com a Intenção:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text('1º intenção:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'são aquelas feridas em que as bordas são aproximadas por sutura cirúrgica.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('2º intenção:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'são aquelas em que não é possível aproximar as bordas da feridas,'
                      'que deverá permanecer aberta para que ocorra a contração e epitelização. ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('3º intenção:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'diferentemente da cicatrização por segunda intenção, '
                      'a cicatrização de terceira intenção é quando a ferida '
                      'é fechada depois de um tempo aberta. A ferida deve permanecer '
                      'aberta até que haja diminuição do edema ou infecção ou para '
                      'permitir a retirada do exsudato.  ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 15),
                  Text('De Acordo com o grau de contaminação:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      )),
                  SizedBox(height: 10),
                  Text('Ferida Limpa:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'local não traumático e não infectado, sem inflamação, '
                      'sem quebra da técnica asséptica, sem entrada em direção '
                      'aos tratos respiratório, alimentar e genito-urinário ou orofaríngeo.  ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Limpa-contaminada:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'com entrada em direção aos tratos respiratório, alimentar '
                      'e genito-urinário ou orofaríngeo, sem contaminação incomum,'
                      'como por exemplo, quebra da técnica asséptica e drenagem mecânica,'
                      'como apendicectomia.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Contaminada:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'feridas recentemente abertas por qualquer tipo de trauma, '
                      'derramamento grosseiro proveniente do trato gastrointestinal, '
                      'quebra da técnica asséptica, entrada em direção ao Genito-urinário'
                      'ou biliar quando a diurese ou a bílis estiver contaminada. ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Suja:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  Text(
                      'considerada ferida traumática, com cicatrização retardada,'
                      'tecido desvitalizado, presença de corpos estranhos ou contaminação'
                      'por fezes, inflamação aguda e drenagem purulenta durante o procedimento invasivo.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
