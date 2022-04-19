import 'package:flutter/material.dart';
import 'package:projeto_sigma/views/count.dart';
import 'count.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ListSearch(),
        ),
      ),
    );
  }
}

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {

  TextEditingController _textController = TextEditingController();
  final _saved = <String>{};
  final _biggerFont = TextStyle(fontSize: 18);
  static List<String> mainDataList = [
    //1º Período
    "Sustentabilidade em Sistemas de Informação",
    "Fundamentos Matemáticos para Sistemas de Informação I",
    "Projeto Interdisciplinar para Sistemas de Informação I",
    "Princípios de Programação",
    "Introdução à Administração",
    //2º Período
    "Fundamentos de Sistemas de Informação",
    "Fundamentos Matemáticos para Sistemas de Informação II",
    "Projeto Interdisciplinar para Sistemas de Informação II",
    "Fundamentos de Problemas Computacionais I",
    "Elementos de Sistemas Computacionais",
    //3º Período
    "Engenharia para Sistemas de Informação I",
    "Introdução ao Armazenamento e Análise de Dados",
    "Projeto Interdisciplinar para Sistemas de Informação III",
    "Desenvolvimento de Sistemas de Informação",
    //4º Período
    "Princípios de Software Básico",
    "Projeto Interdisciplinar para Sistemas de Informação IV",
    "Fundamentos de Problemas Computacionais II",
    "Sistemas de Informação na Internet",
    //5º Período
    "Engenharia para Sistemas de Informação II",
    "Projeto de Desenvolvimento Tecnológico para o Mundo I",
    "Segurança e Auditoria de Sistemas",
    "Empreendedorismo e Inovação",
    //6º Período
    "Engenharia para Sistemas de Informação III",
    "Modelagem de Dados",
    "Projeto de Desenvolvimento Tecnológico para o Mundo II",
    "Calculo N1",
    //7º Período
    "Estatística Aplicada à Análise de Dados",
    "Projeto de Soluções Complexas I / Projetos para a Sociedade I",
    "Princípios da Teoria da Computação",
    //8º Período
    "Fundamentos de Estratégia Competitiva",
    "Projeto de Soluções Complexas II / Projeto para Sociedade II",
    "Análise Organizacional e de Processos",
    "Gestão do Conhecimento",
    //9º Período
    "Trabalho de Conclusão de Curso",
    //Optativas
    "Optativa I: Reconhecimento de Padrões",
    "Optativa II: Internet das Coisas",
    "Optativa III: Sistemas Colaborativos",
    "Optativa IV: Introdução a Computação Quântica",
    "Optativa V: Fundamentos de Criptografia",
    "Optativa VI: Modelagem Matemático-Computacional aplicada a epidemiologia",
  ];

  List<String> newDataList = List.from(mainDataList);

  onItemChanged(String value) {
    setState(() {
      newDataList = mainDataList
          .where((string) => string.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
            Image.asset("assets/images/logo1.png", height: 150),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Quantas disciplinas você \ndeseja cursar esse período ?',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.3)),
                
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Here...',
              ),
              onChanged: onItemChanged,
            ),
          ),
          Expanded(
            child: new ListView(
              padding: EdgeInsets.all(12.0),
              children: newDataList.map((data) {
              return ListTile(
              title: _buildRow(data),
              onTap: ()=> print(data),);
              }).toList(),
            ),
          ),
          SafeArea(
              child: Container(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16, bottom: 16),
                              child: Text("VOLTAR",
                                  style: TextStyle(fontSize: 12.0))),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: FlatButton(
                          textColor: Colors.white,
                          color: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const count()),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0),
                          ),
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 16.0, right: 16.0, top: 16, bottom: 16),
                              child: Text("PRÓXIMO",
                                  style: TextStyle(fontSize: 12.0))),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          )
        ],
      ),
    );
  }

  Widget _buildRow(pair) {
  final alreadySaved = _saved.contains(pair);
  return ListTile(
    title: Text(
      pair,
      style: _biggerFont,
    ),
    trailing: Icon(
      alreadySaved ? Icons.check_box: Icons.check_box_outline_blank,
      color: alreadySaved ? Colors.blue : null,
      semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
    ),
    onTap: () {   
      setState(() {
        if (alreadySaved) {
          _saved.remove(pair);
        } else { 
          _saved.add(pair); 
        } 
      });
    },
    );
  }

    void _pushSaved() {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (context) {
          final tiles = _saved.map(
            (pair) {
              return ListTile(
                title: Text(
                  pair,
                  style: _biggerFont,
                ),
              );
            },
          );
          final divided = tiles.isNotEmpty
              ? ListTile.divideTiles(
                  context: context,
                  tiles: tiles,
                ).toList()
              : <Widget>[];

          return Scaffold(
            appBar: AppBar(
              title: const Text('Saved Suggestions'),
            ),
            body: ListView(children: divided),
          );
        },
      )
    );
  }


}



