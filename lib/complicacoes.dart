import 'package:flutter/material.dart';

class ComplicacoesPage extends StatefulWidget {
  @override
  _ComplicacoesState createState() => _ComplicacoesState();
}

class _ComplicacoesState extends State<ComplicacoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complicações"),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    'Complicações',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Entende-se por complicação cirúrgica os eventos indesejáveis '
                      'ocorridos no período pós-operatório, imediato ou mediato, que dificultam'
                      'a resolução dos impactos gerados pelo procedimento.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 20),
                  Text(
                      'Dessa forma, temos as seguintes complicações cirúrgicas: ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Hematoma: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'é uma coleção anormal de sangue ou coágulos na incisão'
                      'ou na camada subcutânea.  O tratamento consiste, na maioria '
                      'dos casos, na retirada dos coágulos em condições estéreis, '
                      'na oclusão de vasos sangrantes e no fechamento da lesão. ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Infecção: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'é uma complicação prevalente entre os casos cirúrgicos, '
                      'determinada como um processo inflamatório da ferida ou cavidade '
                      'operatória que drene exsudato purulento, com ou sem cultura '
                      'positiva. ',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  /////
                  SizedBox(height: 10),
                  Text('Deiscência: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'ocorre da ruptura parcial ou total da camada fáscia da pele, '
                      'de maneira precoce, no intercurso do pós-operatório, '
                      'é uma quebra da barreira para penetração de micro-organismos.'
                      'São fatores de riscos para deiscência da ferida:'
                      'hipoproteinemia, vômitos, febre, infecção da ferida,'
                      'distensão abdominal, tipo de sutura e experiência do cirurgião.',
                      softWrap: true,
                      style: TextStyle(fontSize: 16)),
                  SizedBox(height: 10),
                  Text('Evisceração: ',
                      softWrap: true,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Text(
                      'é a ocorrência de exteriorização das vísceras. Nessa condição, '
                      'o paciente deve ser posionado em fowler baixo, e as alças '
                      'intestinais cobertas com compressas estéreis úmidas com '
                      'soro fisiológico.',
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
