import 'package:flutter/material.dart';
import 'package:victoria_form/database/provider/database_provider.dart';

import '../avaliacao_feridas/avaliacao_feridas_page.dart';
import '../complicacoes/complicacoes_page.dart';
import '../conceitos/conceitos_page.dart';

class CirurgicoPage extends StatefulWidget {
  const CirurgicoPage({Key? key}) : super(key: key);

  @override
  _CirurgicoPageState createState() => _CirurgicoPageState();
}

class _CirurgicoPageState extends State<CirurgicoPage> {
  //Variáveis de Inicialização
  String nomepaciente = '';
  String dataNascimento = '';
  String tempointernacao = '';
  String comorbidades = '';
  String fatoresrisco = '';
  String dropdownValueClassificacao = 'Classificação';
  String dropdownValueComplexidade = 'Complexidade';
  String dropdownValueLA = 'Localização Anatômica';
  String dropdownValueExsudato = 'Exsudato';
  String dropdownValuevolumeExsudato = 'Volume de Exsudato';
  String dropdownValueTecidos = 'Tecidos';
  String dropwdownValueBordas = 'Bordas';
  String dropwdownValueComprimento = 'Comprimento';
  String dropwdownValueProfundidade = 'Profundidade';
  String dropwdownValueInfeccao = 'Sinais de Infecção';
  String dropdownValueDor = 'Dor';

  //Varáveis BD
  TextEditingController nomePacienteController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();
  TextEditingController tempoInternacaoController = TextEditingController();
  TextEditingController comorbidadesController = TextEditingController();
  TextEditingController fatoresRiscoController = TextEditingController();

  OfflineDatabaseProvider? database;

  @override
  void initState() {
    database = OfflineDatabaseProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feridas Cirúrgicas'),
        //automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage('assets/images/menu.png'),
                //   fit: BoxFit.fill,
                // ),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                'Pense Feridas',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: const Text('Conceitos e Classificações'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConceitosPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Complicações'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComplicacoesPage()),
                );
              },
            ),
            ListTile(
              title: const Text('Avaliação de Feridas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AvaliacoesFeridasPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Atualizações'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Referências'),
              onTap: () {
                // Update the state of the app.
                // ...
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Sobre'),
              onTap: () {
                showAboutDialog(
                  context: context,
                  children: <Widget>[
                    SizedBox(height: 10),
                    Text(
                      'Este aplicativo foi feito com o objetivo de gerar facilidades para os enfermeiros que atuam no cuidado com feridas cirúrgicas complexas.',
                    ),
                  ],
                  applicationIcon: FlutterLogo(),
                  applicationName: 'Sobre o Pense Feridas',
                  applicationVersion: '1.0.0',
                  applicationLegalese: 'Desenvolvido por Josias Félix Studios',
                );
              },
            ),
          ],
        ),
      ),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Cadastro do Paciente',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.blueAccent,
                        color: Colors.white,
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      onChanged: (text) {
                        nomepaciente = text;
                      },
                      controller: nomePacienteController,
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        labelText: 'Nome do Paciente',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextFormField(
                          onChanged: (text) {
                            dataNascimento = text;
                          },
                          controller: dataNascimentoController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Data de Nascimento',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: TextFormField(
                          onChanged: (text) {
                            tempointernacao = text;
                          },
                          controller: tempoInternacaoController,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Tempo de Internação',
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      onChanged: (text) {
                        comorbidades = text;
                      },
                      controller: comorbidadesController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Comorbidades',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: TextFormField(
                      onChanged: (text) {
                        fatoresrisco = text;
                      },
                      controller: fatoresRiscoController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: 'Fatores de Risco',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blueAccent, width: 3),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      'Avaliação das Feridas',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.blueAccent,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueClassificacao,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue1) {
                            setState(() {
                              dropdownValueClassificacao = newValue1!;
                            });
                          },
                          items:
                              <String>[
                                'Classificação',
                                '-------------------------------------',
                                'Primeira Intenção',
                                'Segunda Intenção',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueComplexidade,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue2) {
                            setState(() {
                              dropdownValueComplexidade = newValue2!;
                            });
                          },
                          items:
                              <String>[
                                'Complexidade',
                                '--------',
                                'Simples',
                                'Complexa',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ), // onde devo ir
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueLA,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue3) {
                            setState(() {
                              dropdownValueLA = newValue3!;
                            });
                          },
                          items:
                              <String>[
                                'Localização Anatômica',
                                '---------------------',
                                'Crânio',
                                'Tórax',
                                'Abdômen',
                                'Pelve',
                                'MMSS',
                                'MMII',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueExsudato,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue4) {
                            setState(() {
                              dropdownValueExsudato = newValue4!;
                            });
                          },
                          items:
                              <String>[
                                'Exsudato',
                                '-----------',
                                'Não',
                                'Seroso',
                                'Sanguinolento',
                                'Purulento',
                                'Piosanguinolento',
                                'Fibrinoso',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValuevolumeExsudato,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue11) {
                            setState(() {
                              dropdownValuevolumeExsudato = newValue11!;
                            });
                          },
                          items:
                              <String>[
                                'Volume de Exsudato',
                                '-----------------',
                                'Pouco (Até 5 Gazes Molhadas)',
                                'Moderado (De 5 A 10 Gazes Molhadas)',
                                'Acentuado (Mais De 10 Gazes Molhadas)',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueTecidos,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue5) {
                            setState(() {
                              dropdownValueTecidos = newValue5!;
                            });
                          },
                          items:
                              <String>[
                                'Tecidos',
                                '-----------',
                                'Granulação',
                                'Hipergranulação',
                                'Necrose Seca',
                                'Esfacelo',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),

                      SizedBox(width: 20),
                      Container(
                        child: DropdownButton<String>(
                          value: dropwdownValueBordas,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue6) {
                            setState(() {
                              dropwdownValueBordas = newValue6!;
                            });
                          },
                          items:
                              <String>[
                                'Bordas',
                                '-----------',
                                'Aderida',
                                'Não Aderida',
                                'Macerada',
                                'Indistinta',
                                'Hiperqueratosa',
                                'Epibolia',
                                'Fibrótica',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      //agora
                    ],
                  ), // onde devo ir
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: DropdownButton<String>(
                          value: dropwdownValueComprimento,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue7) {
                            setState(() {
                              dropwdownValueComprimento = newValue7!;
                            });
                          },
                          items:
                              <String>[
                                'Comprimento',
                                '-------------',
                                'Pequena (menor que 50cm2)',
                                'Média (maior que 50cm2 e menor que 150cm2)',
                                'Grande (maior que 150 cm2 emenor que 250 cm2)',
                                'Extensa (maior que 250 cm2)',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: DropdownButton<String>(
                          value: dropwdownValueProfundidade,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue8) {
                            setState(() {
                              dropwdownValueProfundidade = newValue8!;
                            });
                          },
                          items:
                              <String>[
                                'Profundidade',
                                '------------',
                                'Não Cavitária',
                                'Cavitária',
                                'Área de Descolamento',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: DropdownButton<String>(
                          value: dropwdownValueInfeccao,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue9) {
                            setState(() {
                              dropwdownValueInfeccao = newValue9!;
                            });
                          },
                          items:
                              <String>[
                                'Sinais de Infecção',
                                '-----------',
                                'Calor',
                                'Rubor',
                                'Edema',
                                'Dor',
                                'Febre',
                                'Purulento',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        child: DropdownButton<String>(
                          value: dropdownValueDor,
                          style: const TextStyle(color: Colors.deepOrange),
                          underline: Container(
                            height: 2,
                            color: Colors.deepPurpleAccent,
                          ),
                          onChanged: (String? newValue10) {
                            setState(() {
                              dropdownValueDor = newValue10!;
                            });
                          },
                          items:
                              <String>[
                                'Dor',
                                '------',
                                'Sim',
                                'Não',
                              ].map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              }).toList(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () {
                      saveForm();
                    },
                    child: Text('Gerar Resultado'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ), //ELEVATED
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  saveForm() async {
    Map<String, dynamic> data = {
      "nome_paciente": nomePacienteController.text,
      "data_nascimento": dataNascimentoController.text,
      "tempo_internacao": tempoInternacaoController.text,
      "comorbidades": comorbidadesController.text,
      "fatores_risco": fatoresRiscoController.text,
      "classificacao": dropdownValueClassificacao,
      "complexidade": dropdownValueComplexidade,
      "localizacao": dropdownValueLA,
      "exsudato": dropdownValueExsudato,
      "volumeexsudato": dropdownValuevolumeExsudato,
      "tecidos": dropdownValueTecidos,
      "bordas": dropwdownValueBordas,
      "comprimento": dropwdownValueComprimento,
      "profundidade": dropwdownValueProfundidade,
      "sinaisinfeccao": dropwdownValueInfeccao,
      "dor": dropdownValueDor,
    };

    final result = await database!.saveCirurgicoForm(data: data);

    Navigator.of(context).pop(result);
  }
}
