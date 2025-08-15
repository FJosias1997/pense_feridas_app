import 'package:flutter/material.dart';
import 'package:victoria_form/database/provider/database_provider.dart';
import 'package:victoria_form/enums/dropdowns_enum.dart';
import 'package:victoria_form/extensions/context_extensions.dart';
import 'package:victoria_form/widgets/blue_title/default_blue_title.dart';
import 'package:victoria_form/widgets/drawer/default_drawer_widget.dart';
import 'package:victoria_form/widgets/dropdown/default_dropdown_widget.dart';
import 'package:victoria_form/widgets/text_input/default_text_form_field_widget.dart';

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
  String dropdownValueClassificacao = Classificacao.selecione.label;
  String dropdownValueComplexidade = Complexidade.selecione.label;
  String dropdownValueLA = LocalizacaoAnatomica.selecione.label;
  String dropdownValueExsudato = Exsudato.selecione.label;
  String dropdownValuevolumeExsudato = VolumeExsudato.selecione.label;
  String dropdownValueTecidos = Tecidos.selecione.label;
  String dropwdownValueBordas = Bordas.selecione.label;
  String dropwdownValueComprimento = Comprimento.selecione.label;
  String dropwdownValueProfundidade = Profundidade.selecione.label;
  String dropwdownValueInfeccao = Infeccao.selecione.label;
  String dropdownValueDor = Dor.selecione.label;

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
      appBar: AppBar(title: Text('Feridas Cirúrgicas')),
      drawer: DefaultDrawerWidget(),
      body: Material(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultBlueTitle('Cadastro do Paciente'),
                  SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: DefaultTextFormFieldWidget(
                      textEditingController: nomePacienteController,
                      labelText: 'Nome do Paciente',
                      onChanged: (text) {
                        nomepaciente = text;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: DefaultTextFormFieldWidget(
                          textEditingController: dataNascimentoController,
                          labelText: 'Data de Nascimento',
                          onChanged: (text) {
                            dataNascimento = text;
                          },
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: DefaultTextFormFieldWidget(
                          textEditingController: tempoInternacaoController,
                          labelText: 'Tempo de Internação',
                          onChanged: (text) {
                            tempointernacao = text;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: DefaultTextFormFieldWidget(
                      textEditingController: comorbidadesController,
                      labelText: 'Comorbidades',
                      onChanged: (text) {
                        comorbidades = text;
                      },
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: DefaultTextFormFieldWidget(
                      textEditingController: fatoresRiscoController,
                      labelText: 'Fatores de Risco',
                      onChanged: (text) {
                        fatoresrisco = text;
                      },
                    ),
                  ),
                  SizedBox(height: 30),
                  DefaultBlueTitle('Avaliação das Feridas'),
                  SizedBox(height: 20),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DefaultDropdownWidget(
                        value: dropdownValueClassificacao,
                        width: 0.5,
                        label: 'Classificação',
                        items:
                            Classificacao.values.map((Classificacao c) {
                              return c.label;
                            }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValueClassificacao = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 4),
                      DefaultDropdownWidget(
                        value: dropdownValueComplexidade,
                        width: 0.4,
                        label: 'Complexidade',
                        items:
                            Complexidade.values.map((Complexidade c) {
                              return c.label;
                            }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValueComplexidade = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropdownValueLA,

                    label: 'Localização Anatômica',
                    items:
                        LocalizacaoAnatomica.values.map((
                          LocalizacaoAnatomica l,
                        ) {
                          return l.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValueLA = value!;
                      });
                    },
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropdownValueExsudato,

                    label: 'Exsudato',
                    items:
                        Exsudato.values.map((Exsudato e) {
                          return e.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValueExsudato = value!;
                      });
                    },
                  ),

                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropdownValuevolumeExsudato,
                    label: 'Volume Exsudato',
                    items:
                        VolumeExsudato.values.map((VolumeExsudato f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValuevolumeExsudato = value!;
                      });
                    },
                  ),

                  SizedBox(height: 14),

                  DefaultDropdownWidget(
                    value: dropdownValueTecidos,
                    label: 'Tecido',
                    items:
                        Tecidos.values.map((Tecidos f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValueTecidos = value!;
                      });
                    },
                  ),

                  SizedBox(height: 14),

                  DefaultDropdownWidget(
                    value: dropwdownValueBordas,
                    label: 'Bordas',
                    items:
                        Bordas.values.map((Bordas f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropwdownValueBordas = value!;
                      });
                    },
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropwdownValueComprimento,
                    label: 'Comprimento',
                    items:
                        Comprimento.values.map((Comprimento f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropwdownValueComprimento = value!;
                      });
                    },
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropwdownValueProfundidade,
                    label: 'Profundidade',
                    items:
                        Profundidade.values.map((Profundidade f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropwdownValueProfundidade = value!;
                      });
                    },
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropwdownValueInfeccao,
                    label: 'Sinais de Infecção',
                    items:
                        Infeccao.values.map((Infeccao f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropwdownValueInfeccao = value!;
                      });
                    },
                  ),
                  SizedBox(height: 14),
                  DefaultDropdownWidget(
                    value: dropdownValueDor,
                    label: 'Dor',
                    items:
                        Dor.values.map((Dor f) {
                          return f.label;
                        }).toList(),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValueDor = value!;
                      });
                    },
                  ),

                  ElevatedButton(
                    onPressed: () {
                      saveForm();
                    },
                    child: Text('Gerar Resultado'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,

                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 15,
                      ),
                      textStyle: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: context.theme.colorScheme.onPrimary,
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
