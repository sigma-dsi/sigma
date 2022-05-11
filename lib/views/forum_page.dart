import 'package:projeto_sigma/models/list_disciplinas.dart';
import 'package:flutter/material.dart';
import '../repositories/disciplina_repository.dart.dart';
import 'comentario.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  final tabela = DisciplinaRepository.tabela;
  List<Disciplina> selecionadas = [];
  appBarDinamica() {
    if (selecionadas.isEmpty) {
      return AppBar(
        title: const Text('Disciplinas do curso de Sistemas de Informação'),
      );
    } else {
      return AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              selecionadas = [];
            });
          },
        ),
        title: Text('${selecionadas.length} selecionadas'),
        backgroundColor: Colors.blueGrey[50],
        elevation: 1,
        iconTheme: const IconThemeData(color: Colors.black87),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }

  mostrarDetalhes(Disciplina disciplina) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ComentarioPage(disciplina: disciplina),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDinamica(),
      body: ListView.separated(
          padding: const EdgeInsets.all(16),
          separatorBuilder: (_, ___) => const Divider(),
          shrinkWrap: true,
          itemCount: tabela.length,
          itemBuilder: (BuildContext context, disciplina) {
            return ListTile(
              title: Text(tabela[disciplina].nome),
              trailing: const Icon(Icons.chevron_right),
              selected: selecionadas.contains(tabela[disciplina]),
              selectedTileColor: Colors.indigo[50],
              onLongPress: () {
                setState(() {
                  (selecionadas.contains(tabela[disciplina]))
                      ? selecionadas.remove(tabela[disciplina])
                      : selecionadas.add(tabela[disciplina]);
                });
              },
              onTap: () => mostrarDetalhes(tabela[disciplina]),
            );
          }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: selecionadas.isNotEmpty
          ? FloatingActionButton.extended(
              onPressed: () {},
              icon: const Icon(Icons.star),
              label: const Text(
                'FAVORITAR',
                style: TextStyle(
                  letterSpacing: 0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          : null,
    );
  }
}
