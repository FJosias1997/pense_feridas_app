import 'package:flutter/material.dart';

class AvaliacoesFeridasPage extends StatefulWidget {
  @override
  _AvaliacoesFeridasState createState() => _AvaliacoesFeridasState();
}

class _AvaliacoesFeridasState extends State<AvaliacoesFeridasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avaliações de Feridas"),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Avaliações de Feridas',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Para avaliar a ferida, deverão ser abordados os critérios clínicos '
                      'pertinentes ao processo cicatricial, para que, com os resultados dessa '
                      'avaliação, sejam direcionadas intervenções mais específicas '
                      'com vistas a fechar a lesão.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image1.jpeg'),
                    ],
                  ),
                  Text('Quadro 1: Elementos que devem ser avaliados na ferida',
                      softWrap: true, style: TextStyle(fontSize: 12)),
                  SizedBox(height: 20),
                  Text('Localização da ferida: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'A descrição topográfica da ferida é relevante por precisar'
                      'com clareza o local onde está situada e possibilitar um acompanhamento'
                      'sistemático de sua evolução. Para tal procedimento, exige-se do examinador'
                      'um domínio do conhecimento anatômico do corpo humano, sob os aspectos do'
                      'sistema muscular, ósseo, vascular, entre outros, conforme demonstrado '
                      'nas figuras 01, 02 e 03:',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),

                  ///
                  Column(
                    children: [
                      Image.asset('assets/images/image2.jpeg'),
                      Text('Figura 1',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Image.asset('assets/images/image3.jpeg'),
                      Text('Figura 2',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Image.asset('assets/images/image4.jpeg'),
                      Text('Figura 3',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('Avaliação do Exsudato: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'A avaliação precisa do teor do exsudato presente no leito da lesão'
                      'servirá como suporte norteador para a escolha do curativo ideal,'
                      'principalmente nos casos das feridas crônicas. Assim, deverá ser '
                      'observado e classificado quanto à coloração, à consistência, ao '
                      'odor e ao volume. Segue na figura abaixo para se avaliar '
                      'o aspecto do exsudato quanto a avaliação e a consistência:',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image5.jpeg'),
                      Text('Figura 4',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),

                  ///
                  SizedBox(height: 20),
                  Text('Volume do Exsudato: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'O método da observação das gazes molhadas retiradas do curativo'
                      'é mais preciso para avaliar o quantitativo do exsudato, que pode'
                      'ser descrito em pouco exsudato: até cinco gazes; '
                      'exsudato moderado: de cinco a dez gazes; '
                      'e exsudato acentuado, mais de dez gazes.'
                      'Sobre as classificações do quantitativo do exsudato comumente'
                      'utilizadas e descritas acima, ressalta-se que, para avaliar '
                      'fidedignamente o volume exsudato, não deve ser considerado '
                      'apenas o parâmetro do quantitativo de gazes utilizadas, '
                      'posto que, atualmente, existe um quantitativo de coberturas '
                      'em substituição às gazes convencionais que apresentam '
                      'tecnologias específicas para gerir o exsudato. Assim, '
                      'propõe-se classificar o volume do exsudato, conforme mostra o quadro:',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image6.jpeg'),
                      Text('Figura 5',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/image7.jpeg'),
                      Text('Figura 6',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Text('Tecidos no leito da ferida: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'Na avaliação do leito da ferida, há de se considerar '
                      'dois aspectos importantes: a viabilidade e a inviabilidade '
                      'dos tecidos pa- ra a cicatrização. Quanto aos tecidos viáveis,'
                      'destacam-se o tecido de granulação e o de epitelização, '
                      'e aos inviáveis, as necroses de coagulação e de liquefação.'
                      'Segue abaixo os tecidos presentes no leito das feridas:',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image8.jpeg'),
                      Text('Figura 6',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/image9.jpeg'),
                      Text('Figura 7',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/image10.jpeg'),
                      Text('Figura 8',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //
                  Text('Bordas/ margens da lesão:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'Os limites anatômicos das feridas são definidos pelo leito,'
                      'pelos bordos/bordas, pelas margens e pela pele perilesional.'
                      'O leito é a área central da ferida, vascularizada, preenchida'
                      'por tecido de granulação e/ou necrose, cuja extremidade é '
                      'limitada pelos bordos (contorno interno da ferida), onde inicia'
                      'a etapa da epitelização. A margem funciona como um contorno externo'
                      'da ferida e limite anatômico entre os bordos e a pele perilesional.'
                      'Tipos de bordas/margens:',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image11.jpeg'),
                      Text('Figura 9',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/image12.jpeg'),
                      Text('Figura 10',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                      SizedBox(
                        height: 10,
                      ),
                      Image.asset('assets/images/image13.jpeg'),
                      Text('Figura 11',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text('Avaliação da dor:',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'A dor é outro aspecto que merece atenção por parte do profissional'
                      'que cuida do paciente com ferida. A Escala Visual Analógica '
                      '– EVA consiste em auxiliar na aferição da intensidade da dor '
                      'no paciente, é um instrumento importante para verificarmos '
                      'a evolução do paciente durante o tratamento e mesmo a cada atendimento,'
                      ' de maneira mais fidedigna. Também é útil para podermos analisar '
                      'se o tratamento está sendo efetivo, quais procedimentos têm surtido'
                      'melhores resultados, assim como se há alguma deficiência no tratamento,'
                      'de acordo com o grau de melhora ou piora da dor. A EVA pode ser utilizada'
                      'no início e no final de cada atendimento, registrando o resultado'
                      'sempre na evolução. Para utilizar a EVA o profissional deve questionar'
                      'o paciente quanto ao seu grau de dor sendo que 0 significa ausência total'
                      'de dor e 10 o nível de dor máxima suportável pelo paciente.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Column(
                    children: [
                      Image.asset('assets/images/image14.jpeg'),
                      Text('Figura 12',
                          softWrap: true, style: TextStyle(fontSize: 12)),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
