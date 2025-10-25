import 'package:flutter/material.dart';
import 'package:pense_feridas_app/database/models/cirurgico_model.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';
import 'package:pense_feridas_app/pages/ficha/widgets/conduta_listtile_widget.dart';
import 'package:pense_feridas_app/pages/ficha/widgets/info_listtile_widget.dart';
import 'package:pense_feridas_app/widgets/buttons/default_button_widget.dart';

class FichaPage extends StatefulWidget {
  final CirurgicoModel? cirurgico;
  const FichaPage({this.cirurgico, super.key});

  @override
  State<FichaPage> createState() => _FichaPageState();
}

class _FichaPageState extends State<FichaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Ficha do Paciente")),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
          child: Column(
            children: [
              Text(
                'Dados do Paciente',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              InfoListtileWidget(
                title: "Nome",
                subtitle: widget.cirurgico!.nomePaciente!,
              ),
              InfoListtileWidget(
                title: "Data de Nascimento",
                subtitle: widget.cirurgico!.dataNascimento!,
              ),
              InfoListtileWidget(
                title: "Tempo de Internação",
                subtitle: widget.cirurgico!.tempoInternacao!,
              ),
              InfoListtileWidget(
                title: "Comorbidades",
                subtitle: widget.cirurgico!.comorbidades!,
              ),
              InfoListtileWidget(
                title: "Fatores de Risco",
                subtitle: widget.cirurgico!.fatoresRisco!,
              ),
              const SizedBox(height: 16),
              Text(
                'Características da Ferida',
                style: context.theme.textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              InfoListtileWidget(
                title: "Classificação",
                subtitle: widget.cirurgico!.classificacao!,
              ),
              InfoListtileWidget(
                title: "Complexidade",
                subtitle: widget.cirurgico!.complexidade!,
              ),
              InfoListtileWidget(
                title: "Localização Anatômica",
                subtitle: widget.cirurgico!.localizacao!,
              ),
              InfoListtileWidget(
                title: "Exsudato",
                subtitle: widget.cirurgico!.exsudato!,
              ),
              InfoListtileWidget(
                title: "Volume Exsudato",
                subtitle: widget.cirurgico!.volumeexsudato!,
              ),
              InfoListtileWidget(
                title: "Tecidos",
                subtitle: widget.cirurgico!.tecidos!,
              ),
              InfoListtileWidget(
                title: "Bordas",
                subtitle: widget.cirurgico!.bordas!,
              ),
              InfoListtileWidget(
                title: "Comprimento",
                subtitle: widget.cirurgico!.comprimento!,
              ),
              InfoListtileWidget(
                title: "Profundidade",
                subtitle: widget.cirurgico!.profundidade!,
              ),
              InfoListtileWidget(
                title: "Dor",
                subtitle: widget.cirurgico!.dor!,
              ),
              DefaultButtonWidget(
                title: "Visualizar Conduta",
                onTap: () {
                  CondutaListtileWidget().buildCondutaListTile(
                    context: context,
                    cirurgico: widget.cirurgico,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
