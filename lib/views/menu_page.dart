import 'package:flutter/material.dart';
import 'count.dart';

class MenuPage extends StatefulWidget {
  static const routeName = '/menu';
  const MenuPage({Key? key}) : super(key: key);

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  Card cardItem(String title, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: const Color(0xff0303ff),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 3,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.of(context).pushNamed('/disciplina');
            }
            if (index == 1) {
              Navigator.of(context).pushNamed('/descricao');
            }
            if (index == 2) {
              Navigator.of(context).pushNamed('/forum');
            }
            if (index == 3) {
              qtdCadeiras == 0
                  ? _showDialog(context)
                  : Navigator.of(context).pushNamed('/indicacao');
            }
            if (index == 4) {
              Navigator.of(context).pushNamed('/gradeAtual');
            }
            if (index == 5) {
              Navigator.of(context).pushNamed('/cursadas');
              //6.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.normal),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                cardItem("Selecionar Disciplinas", 0),
                cardItem("Descrição do Curso", 1),
                cardItem("Fórum", 2),
                cardItem("Tela de Indicação", 3),
                cardItem("Grade Atual", 4),
                cardItem("Disciplinas Cursadas", 5),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          title: new Text("Tela de indicação vazia!"),
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
}
