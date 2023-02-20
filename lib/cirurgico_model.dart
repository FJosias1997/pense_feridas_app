class CirurgicoModel {
  String? nomePaciente;
  String? dataNascimento;
  String? tempoInternacao;
  String? comorbidades;
  String? fatoresRisco;
  String? classificacao;
  String? complexidade;
  String? localizacao;
  String? exsudato;
  String? volumeexsudato;
  String? tecidos;
  String? bordas;
  String? comprimento;
  String? profundidade;
  String? sinaisInfeccao;
  String? dor;

  //"nome_paciente": nomePacienteController.text,
  //  "data_nascimento": dataNascimentoController.text,
  //"tempo_internacao": tempoInternacaoController.text,
  //"comorbidades": comorbidadesController.text,
  //"fatores_risco": fatoresRiscoController.text,
  //"classificacao": dropdownValueClassificacao,
  //"complexidade": dropdownValueComplexidade,
  //"localizacao": dropdownValueLA,
  //"exsudato": dropdownValueExsudato,
  //"tecidos": dropdownValueTecidos,
  //"bordas": dropwdownValueBordas,
  //"comprimento": dropwdownValueComprimento,
  //"profundidade": dropwdownValueProfundidade,
  //"sinaisinfeccao": dropwdownValueInfeccao,
  //"dor": dropdownValueDor

  CirurgicoModel({
    this.nomePaciente,
    this.dataNascimento,
    this.tempoInternacao,
    this.comorbidades,
    this.fatoresRisco,
    this.classificacao,
    this.complexidade,
    this.localizacao,
    this.exsudato,
    this.volumeexsudato,
    this.tecidos,
    this.bordas,
    this.comprimento,
    this.profundidade,
    this.sinaisInfeccao,
    this.dor,
  });

  factory CirurgicoModel.fromJson({
    required Map<String, dynamic> json,
    bool isFromWeb = false,
  }) {
    return CirurgicoModel(
      nomePaciente: json['nome_paciente'],
      dataNascimento: json['data_nascimento'],
      tempoInternacao: json['tempo_internacao'],
      comorbidades: json['comorbidades'],
      fatoresRisco: json['fatores_risco'],
      classificacao: json['classificacao'],
      complexidade: json['complexidade'],
      localizacao: json['localizacao'],
      exsudato: json['exsudato'],
      volumeexsudato: json['volumeexsudato'],
      tecidos: json['tecidos'],
      bordas: json['bordas'],
      comprimento: json['comprimento'],
      profundidade: json['profundidade'],
      sinaisInfeccao: json['sinaisinfeccao'],
      dor: json['dor'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   return {
  //     'abbrev': this.abbrev,
  //     'author': this.author,
  //     'chapters': this.chapters,
  //     'comment': this.comment,
  //     'group_name': this.group,
  //     'name': this.name,
  //     'testament': this.testament,
  //   };
  // }
}
