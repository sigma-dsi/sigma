import 'package:flutter/material.dart';
import 'package:projeto_sigma/repositories/code.dart';

class Cursadas extends StatefulWidget {
  const Cursadas({Key? key}) : super(key: key);
  static const routeName = '/cursadas';
  @override
  _CursadasState createState() => _CursadasState();
}

class _CursadasState extends State<Cursadas> {
  var user = usuario.email;
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Disciplinas cursadas por $user"),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(children: <Widget>[
            for (int i = 0; i < cursadasDisciplinas.length; i++)
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.centerLeft,
                  child: ListTile(
                      title: Text(cursadasDisciplinas[i]),
                      subtitle: Text(user)),
                ),
              )
          ])),
        ));
  }

  void setState_cursadas() {
    setState(() {
      cursadasDisciplinas;
    });
  }

  /*void _showDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text("Tela de disciplinas cursadas vazia!"),
          content: new Text(
              "Por favor, adicione as disciplinas na tela de Selecionar Disciplinas."),
          actions: <Widget>[
            // define os botões na base do dialogo
            new FlatButton(
              child: new Text("Fechar"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  menssagem_erro(setState_cursadas) {
    if (setState_cursadas != null) {
      return Column(children: <Widget>[
        for (int i = 0; i < setState_cursadas.lenght; i++)
          Card(
            elevation: 10,
            child: Container(
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.centerLeft,
              child: ListTile(
                  title: Text(setState_cursadas[i]), subtitle: Text(user)),
            ),
          )
      ]);
    } else {
      return _showDialog(context);
    }
  }*/
}
