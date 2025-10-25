import 'package:pense_feridas_app/database/models/cirurgico_model.dart';
import 'package:pense_feridas_app/enums/dropdowns_enum.dart';
import 'package:pense_feridas_app/strings/condutas_strings_list.dart';

class AppUtils {
  List<String> getConduta(CirurgicoModel form) {
    final condutas = CondutasStringsList();

    List<String> conduta = [];

    print(Classificacao.primeiraIntencao);
    if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.complexidade! == Complexidade.simples.label) {
      conduta = condutas.conduta1;
    } else if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        form.volumeexsudato! == VolumeExsudato.pouco.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta2;
    } else if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        form.volumeexsudato! == VolumeExsudato.moderado.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta3;
    } else if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        form.volumeexsudato! == VolumeExsudato.acentuado.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta4;
    } else if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        ((form.exsudato! == Exsudato.piosanguinolento.label ||
                form.exsudato! == Exsudato.purulento.label) &&
            form.volumeexsudato! == VolumeExsudato.acentuado.label &&
            form.complexidade! == Complexidade.complexa.label)) {
      conduta = condutas.conduta5;
    } else if (form.classificacao! == Classificacao.primeiraIntencao.label &&
        form.tecidos! == Tecidos.necroseseca.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta6;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        form.exsudato! == Exsudato.sanguinolento.label &&
        form.volumeexsudato! == VolumeExsudato.moderado.label &&
        form.tecidos! == Tecidos.granulacao.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta7;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        ((form.exsudato! == Exsudato.sanguinolento.label ||
                form.exsudato! == Exsudato.seroso.label) &&
            form.volumeexsudato! == VolumeExsudato.pouco.label &&
            form.tecidos! == Tecidos.granulacao.label &&
            form.complexidade! == Complexidade.complexa.label)) {
      conduta = condutas.conduta8;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        ((form.exsudato! == Exsudato.purulento.label &&
                (form.volumeexsudato! == VolumeExsudato.moderado.label ||
                    form.volumeexsudato! == VolumeExsudato.acentuado.label)) &&
            form.tecidos! == Tecidos.esfacelo.label &&
            form.complexidade! == Complexidade.complexa.label)) {
      conduta = condutas.conduta9;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        ((form.exsudato! == Exsudato.purulento.label &&
                (form.volumeexsudato! == VolumeExsudato.moderado.label ||
                    form.volumeexsudato! == VolumeExsudato.acentuado.label)) &&
            form.tecidos! == Tecidos.esfacelo.label &&
            (form.profundidade! == Profundidade.cavitaria.label ||
                form.profundidade! == Profundidade.areadeslocamento.label) &&
            form.complexidade! == Complexidade.complexa.label)) {
      conduta = condutas.conduta10;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        form.exsudato! == Exsudato.piosanguinolento.label &&
        (form.volumeexsudato! == VolumeExsudato.moderado.label ||
            form.volumeexsudato! == VolumeExsudato.acentuado.label) &&
        form.sinaisInfeccao?.isEmpty == false &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta11;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        form.tecidos! == Tecidos.necroseseca.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta12;
    } else if (form.classificacao! == Classificacao.segundaIntencao.label &&
        form.tecidos! == Tecidos.esfacelo.label &&
        form.complexidade! == Complexidade.complexa.label) {
      conduta = condutas.conduta13;
    }

    return conduta;
  }
}
