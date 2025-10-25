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
}
