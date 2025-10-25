import 'package:flutter/material.dart';
import 'package:pense_feridas_app/database/models/cirurgico_model.dart';
import 'package:pense_feridas_app/database/provider/database_provider.dart';
import 'package:pense_feridas_app/extensions/context_extensions.dart';
import 'package:pense_feridas_app/pages/ficha/ficha_page.dart';
import 'package:pense_feridas_app/widgets/drawer/default_drawer_widget.dart';
import 'package:pense_feridas_app/widgets/speed_dial/default_speed_dial_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  OfflineDatabaseProvider? database;
  List<CirurgicoModel>? list;
  bool isLoading = false;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    database = OfflineDatabaseProvider();
    _getListCirurgico();
  }

  _getListCirurgico() async {
    setState(() {
      isLoading = true;
    });

    final result = await database!.getCirurgicoForm();

    setState(() {
      list = result;
      isLoading = false;
    });
  }

  _deleteRecord(String nomePaciente) async {
    setState(() {
      isLoading = true;
    });

    await database!.deleteRecordTable(nomePaciente);

    setState(() {
      isLoading = false;
    });

    _getListCirurgico();
  }

  @override
  Widget build(BuildContext context) => PopScope(
    canPop: true,
    child: Scaffold(
      key: key,
      appBar: AppBar(title: Text('Pense Feridas')),
      drawer: DefaultDrawerWidget(),

      body:
          isLoading
              ? Center(child: CircularProgressIndicator())
              : list == null
              ? Center(child: Text('Não há registros de fichas por aqui'))
              : list!.length == 0
              ? Center(child: Text('Não há registros de fichas por aqui'))
              : ListView.builder(
                itemCount: list!.length,
                itemBuilder: (_, index) {
                  return Container(
                    child: Card(
                      color: Colors.white,
                      elevation: 2.0,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.yellow,
                          child: Icon(Icons.keyboard_arrow_right),
                        ),
                        title: Text('${list![index].nomePaciente}'),
                        subtitle: Text('${list![index].dataNascimento}'),
                        trailing: IconButton(
                          onPressed:
                              () => _deleteRecord(list![index].nomePaciente!),

                          icon: Icon(Icons.delete, color: Colors.grey),
                        ),
                        onTap:
                            () => context.goPush(
                              FichaPage(cirurgico: list![index]),
                            ),
                      ),
                    ),
                  );
                },
              ),
      floatingActionButton: DefaultSpeedDialWidget(
        onTapFC: () async {
          final result = await context.goPushRouteNamed('/cirurgico_form');

          if (result as int > 0) {
            context.showSnackBar('Registro Criado com Sucesso.');
            _getListCirurgico();
          }
        },
      ),
    ),
  );
}
