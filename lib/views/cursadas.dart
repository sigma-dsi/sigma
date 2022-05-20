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
}

/*verifica_tela_vazia(context) {
  if (cursadasDisciplinas.length == Null) {
    return AlertDialog(
      title: new Text("Não há historico de disciplinas cursadas"),
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
  }
}*/
