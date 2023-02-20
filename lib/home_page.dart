import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:victoria_form/cirurgico_model.dart';
import 'package:victoria_form/database_provider.dart';
import 'package:victoria_form/complicacoes.dart';

import 'avaliacaoferidas.dart';
import 'conceitos.dart';
import 'ficha.dart';

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
    database = OfflineDatabaseProvider();
    _getListCirurgico();
    super.initState();
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
  Widget build(BuildContext context) => WillPopScope(
        onWillPop: () async {
          print('Back Button Pressed');
          return true;
        },
        child: Scaffold(
          key: key,
          appBar: AppBar(
            title: Text('Pense Feridas'),
          ),
          //parte do menu lateral
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
                  child: Text('Pense Feridas',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ),
                ListTile(
                  title: const Text('Conceitos e Classificações'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ConceitosPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  title: const Text('Complicações'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ComplicacoesPage(),
                      ),
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
                              'Este aplicativo foi feito com o objetivo de gerar facilidades para os enfermeiros que atuam no cuidado com feridas cirúrgicas complexas.'),
                        ],
                        applicationIcon: FlutterLogo(),
                        applicationName: 'Sobre o Pense Feridas',
                        applicationVersion: '1.0.0',
                        applicationLegalese:
                            'Desenvolvido por Josias Félix Studios');
                  },
                ),
              ],
            ),
          ),
          //fim do menu lateral
          body: isLoading
              ? Center(child: CircularProgressIndicator())
              : list == null
                  ? Center(
                      child: Text('Sem dados'),
                    )
                  : list!.length == 0
                      ? Center(
                          child: Text('Sem dados'),
                        )
                      : ListView.builder(
                          itemCount: list!.length,
                          itemBuilder: (_, index) {
                            return Container(
                              //Codigo do card
                              child: Card(
                                  color: Colors.white,
                                  elevation: 2.0,
                                  child: ListTile(
                                    leading: CircleAvatar(
                                      backgroundColor: Colors.yellow,
                                      child: Icon(Icons.keyboard_arrow_right),
                                    ),
                                    title: Text('${list![index].nomePaciente}'),
                                    subtitle:
                                        Text('${list![index].dataNascimento}'),
                                    trailing: IconButton(
                                      onPressed: () {
                                        _deleteRecord(
                                            list![index].nomePaciente!);
                                        //'${list![index].nomePaciente}'
                                      },
                                      icon: Icon(Icons.delete,
                                          color: Colors.grey),
                                    ),
                                    onTap: () {
                                      print("Card Tapped");

                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FichaPage(
                                            cirurgico: list![index],
                                          ),
                                        ),
                                      );
                                    },
                                  )),
                            );

                            //......
                          },
                        ),
          floatingActionButton: SpeedDial(
            /// both default to 16
            marginEnd: 18,
            marginBottom: 20,
            // animatedIcon: AnimatedIcons.menu_close,
            // animatedIconTheme: IconThemeData(size: 22.0),
            /// This is ignored if animatedIcon is non null
            icon: Icons.add,
            activeIcon: Icons.remove,
            // iconTheme: IconThemeData(color: Colors.grey[50], size: 30),
            /// The label of the main button.
            // label: Text("Open Speed Dial"),
            /// The active label of the main button, Defaults to label if not specified.
            // activeLabel: Text("Close Speed Dial"),
            /// Transition Builder between label and activeLabel, defaults to FadeTransition.
            // labelTransitionBuilder: (widget, animation) => ScaleTransition(scale: animation,child: widget),
            /// The below button size defaults to 56 itself, its the FAB size + It also affects relative padding and other elements
            buttonSize: 56.0,
            visible: true,

            /// If true user is forced to close dial manually
            /// by tapping main button and overlay is not rendered.
            closeManually: false,

            /// If true overlay will render no matter what.
            renderOverlay: false,
            curve: Curves.bounceIn,
            overlayColor: Colors.black,
            overlayOpacity: 0.5,
            onOpen: () => print('OPENING DIAL'),
            onClose: () => print('DIAL CLOSED'),
            tooltip: 'Speed Dial',
            heroTag: 'speed-dial-hero-tag',
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            elevation: 8.0,
            shape: CircleBorder(),
            // orientation: SpeedDialOrientation.Up,
            // childMarginBottom: 2,
            // childMarginTop: 2,
            children: [
              SpeedDialChild(
                child: Icon(Icons.report),
                backgroundColor: Colors.blue,
                label: 'Feridas Cirúrgicas',
                labelStyle: TextStyle(fontSize: 18.0),
                onTap: () async {
                  final result =
                      await Navigator.of(context).pushNamed('/cirurgico_form');

                  if (result as int > 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Registro Criado com Sucesso.'),
                      ),
                    );
                    _getListCirurgico();
                  }
                },
                onLongPress: () => print('FIRST CHILD LONG PRESS'),
              ),
            ],
          ),
        ),
      );
}
