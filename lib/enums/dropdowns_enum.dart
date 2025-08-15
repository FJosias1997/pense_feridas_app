enum Classificacao { selecione, primeiraIntencao, segundaIntencao }

enum Complexidade { selecione, simples, complexa }

enum LocalizacaoAnatomica {
  selecione,
  cranio,
  torax,
  abdomen,
  pelve,
  mmss,
  mmii,
}

enum Exsudato {
  selecione,
  nao,
  seroso,
  serosanguinolento,
  purulento,
  fibrinoso,
  piosanguinolento,
}

enum VolumeExsudato { selecione, pouco, moderado, acentuado }

enum Tecidos { selecione, granulacao, hipergranulacao, necroseseca, esfacelo }

enum Bordas {
  selecione,
  aderida,
  naoAderida,
  macerada,
  indistinta,
  hiperqueratosa,
  epibolia,
  fibrotica,
}

enum Comprimento { selecione, pequena, media, grande, extensa }

enum Profundidade { selecione, naocavitaria, cavitaria, areadeslocamento }

enum Infeccao { selecione, calor, rubor, edema, dor, febre, purulento }

enum Dor { selecione, sim, nao }

extension ClassificaoExt on Classificacao {
  String get label {
    switch (this) {
      case Classificacao.selecione:
        return 'Selecione';
      case Classificacao.primeiraIntencao:
        return 'Primeira Intenção';
      case Classificacao.segundaIntencao:
        return 'Segunda Intenção';
    }
  }
}

extension ComplexidadeExt on Complexidade {
  String get label {
    switch (this) {
      case Complexidade.selecione:
        return 'Selecione';
      case Complexidade.simples:
        return 'Simples';
      case Complexidade.complexa:
        return 'Complexa';
    }
  }
}

extension LocalizacaoAnatomicaExt on LocalizacaoAnatomica {
  String get label {
    switch (this) {
      case LocalizacaoAnatomica.selecione:
        return 'Selecione';
      case LocalizacaoAnatomica.cranio:
        return 'Crânio';
      case LocalizacaoAnatomica.torax:
        return 'Tórax';
      case LocalizacaoAnatomica.abdomen:
        return 'Abdômen';
      case LocalizacaoAnatomica.pelve:
        return 'Pelve';
      case LocalizacaoAnatomica.mmss:
        return 'MMSS';
      case LocalizacaoAnatomica.mmii:
        return 'MMII';
    }
  }
}

extension ExsudatoExt on Exsudato {
  String get label {
    switch (this) {
      case Exsudato.selecione:
        return 'Selecione';
      case Exsudato.nao:
        return 'Não';
      case Exsudato.seroso:
        return 'Seroso';
      case Exsudato.serosanguinolento:
        return 'Serosanguinolento';
      case Exsudato.purulento:
        return 'Purulento';
      case Exsudato.fibrinoso:
        return 'Fibrinoso';
      case Exsudato.piosanguinolento:
        return 'Piosanguinolento';
    }
  }
}

extension VolumeExsudatoExt on VolumeExsudato {
  String get label {
    switch (this) {
      case VolumeExsudato.selecione:
        return 'Selecione';
      case VolumeExsudato.pouco:
        return 'Pouco';
      case VolumeExsudato.moderado:
        return 'Moderado';
      case VolumeExsudato.acentuado:
        return 'Acentuado';
    }
  }
}

extension TecidosExt on Tecidos {
  String get label {
    switch (this) {
      case Tecidos.selecione:
        return 'Selecione';
      case Tecidos.granulacao:
        return 'Granulação';
      case Tecidos.hipergranulacao:
        return 'Hipergranulação';
      case Tecidos.necroseseca:
        return 'Necrose Seca';
      case Tecidos.esfacelo:
        return 'Esfacelo';
    }
  }
}

extension BordasExt on Bordas {
  String get label {
    switch (this) {
      case Bordas.selecione:
        return 'Selecione';
      case Bordas.aderida:
        return 'Aderida';
      case Bordas.naoAderida:
        return 'Não Aderida';
      case Bordas.macerada:
        return 'Macerada';
      case Bordas.indistinta:
        return 'Indistinta';
      case Bordas.hiperqueratosa:
        return 'Hiperqueratosa';
      case Bordas.epibolia:
        return 'Epibolia';
      case Bordas.fibrotica:
        return 'Fibrotica';
    }
  }
}

extension ComprimentoExt on Comprimento {
  String get label {
    switch (this) {
      case Comprimento.selecione:
        return 'Selecione';
      case Comprimento.pequena:
        return 'Pequena';
      case Comprimento.media:
        return 'Média';
      case Comprimento.grande:
        return 'Grande';
      case Comprimento.extensa:
        return 'Extensa';
    }
  }
}

extension ProfundidadeExt on Profundidade {
  String get label {
    switch (this) {
      case Profundidade.selecione:
        return 'Selecione';
      case Profundidade.naocavitaria:
        return 'Não Cavitária';
      case Profundidade.cavitaria:
        return 'Cavitária';
      case Profundidade.areadeslocamento:
        return 'Área de Deslocamento';
    }
  }
}

extension InfeccaoExt on Infeccao {
  String get label {
    switch (this) {
      case Infeccao.selecione:
        return 'Selecione';
      case Infeccao.calor:
        return 'Calor';
      case Infeccao.rubor:
        return 'Rubor';
      case Infeccao.edema:
        return 'Edema';
      case Infeccao.dor:
        return 'Dor';
      case Infeccao.febre:
        return 'Febre';
      case Infeccao.purulento:
        return 'Purulento';
    }
  }
}

extension DorExt on Dor {
  String get label {
    switch (this) {
      case Dor.selecione:
        return 'Selecione';
      case Dor.sim:
        return 'Sim';
      case Dor.nao:
        return 'Não';
    }
  }
}
