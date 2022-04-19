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

/*class disciplinas_Bsi {
  int diciplina_id;
  String diciplina_name;
  bool isCheck;

  disciplinas_Bsi({this.diciplina_id, this.diciplina_name, this.isCheck});

  static List<disciplinas_Bsi> getDisciplinas(){
    return <disciplinas_Bsi>[
      //1º Período
      disciplinas_Bsi(diciplina_id: 1, diciplina_name: "Sustentabilidade em Sistemas de Informação", isCheck: false),
      disciplinas_Bsi(diciplina_id: 2, diciplina_name: "Fundamentos Matemáticos para Sistemas de Informação I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 3, diciplina_name: "Projeto Interdisciplinar para Sistemas de Informação I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 4, diciplina_name: "Princípios de Programação", isCheck: false),
      disciplinas_Bsi(diciplina_id: 5, diciplina_name: "Introdução à Administração", isCheck: false),
      //2º Período
      disciplinas_Bsi(diciplina_id: 6, diciplina_name: "Fundamentos de Sistemas de Informação", isCheck: false),
      disciplinas_Bsi(diciplina_id: 8, diciplina_name: "Fundamentos Matemáticos para Sistemas de Informação II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 9, diciplina_name: "Projeto Interdisciplinar para Sistemas de Informação II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 10, diciplina_name: "Fundamentos de Problemas Computacionais I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 11, diciplina_name: "Elementos de Sistemas Computacionais", isCheck: false),
      //3º Período
      disciplinas_Bsi(diciplina_id: 12, diciplina_name: "Engenharia para Sistemas de Informação I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 13, diciplina_name: "Introdução ao Armazenamento e Análise de Dados", isCheck: false),
      disciplinas_Bsi(diciplina_id: 14, diciplina_name: "Projeto Interdisciplinar para Sistemas de Informação III", isCheck: false),
      disciplinas_Bsi(diciplina_id: 15, diciplina_name: "Desenvolvimento de Sistemas de Informação", isCheck: false),
      //4º Período
      disciplinas_Bsi(diciplina_id: 16, diciplina_name: "Princípios de Software Básico", isCheck: false),
      disciplinas_Bsi(diciplina_id: 17, diciplina_name: "Projeto Interdisciplinar para Sistemas de Informação IV", isCheck: false),
      disciplinas_Bsi(diciplina_id: 18, diciplina_name: "Fundamentos de Problemas Computacionais II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 19, diciplina_name: "Sistemas de Informação na Interne", isCheck: false),
      //5º Período
      disciplinas_Bsi(diciplina_id: 20, diciplina_name: "Engenharia para Sistemas de Informação II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 21, diciplina_name: "Projeto de Desenvolvimento Tecnológico para o Mundo I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 22, diciplina_name: "Segurança e Auditoria de Sistemas", isCheck: false),
      disciplinas_Bsi(diciplina_id: 23, diciplina_name: "Empreendedorismo e Inovação", isCheck: false),
      //6º Período
      disciplinas_Bsi(diciplina_id: 24, diciplina_name: "Engenharia para Sistemas de Informação III", isCheck: false),
      disciplinas_Bsi(diciplina_id: 25, diciplina_name: "Modelagem de Dados", isCheck: false),
      disciplinas_Bsi(diciplina_id: 26, diciplina_name: "Projeto de Desenvolvimento Tecnológico para o Mundo II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 27, diciplina_name: "Calculo N1", isCheck: false),
      //7º Período
      disciplinas_Bsi(diciplina_id: 28, diciplina_name: "Estatística Aplicada à Análise de Dados", isCheck: false),
      disciplinas_Bsi(diciplina_id: 29, diciplina_name: "Projeto de Soluções Complexas I / Projetos para a Sociedade I", isCheck: false),
      disciplinas_Bsi(diciplina_id: 30, diciplina_name: "Princípios da Teoria da Computação", isCheck: false),
      //8º Período
      disciplinas_Bsi(diciplina_id: 31, diciplina_name: "Fundamentos de Estratégia Competitiva", isCheck: false),
      disciplinas_Bsi(diciplina_id: 32, diciplina_name: "Projeto de Soluções Complexas II / Projeto para Sociedade II", isCheck: false),
      disciplinas_Bsi(diciplina_id: 33, diciplina_name: "Análise Organizacional e de Processos", isCheck: false),
      disciplinas_Bsi(diciplina_id: 34, diciplina_name: "Gestão do Conhecimento", isCheck: false),
      //8º Período
      disciplinas_Bsi(diciplina_id: 35, diciplina_name: "Trabalho de Conclusão de Curso", isCheck: false),
      //Optativas
      disciplinas_Bsi(diciplina_id: 36, diciplina_name: "Optativa I: Reconhecimento de Padrões", isCheck: false),
      disciplinas_Bsi(diciplina_id: 37, diciplina_name: "Optativa II: Internet das Coisas", isCheck: false),
      disciplinas_Bsi(diciplina_id: 38, diciplina_name: "Optativa III: Sistemas Colaborativos", isCheck: false),
      disciplinas_Bsi(diciplina_id: 39, diciplina_name: "Optativa IV: Introdução a Computação Quântica", isCheck: false),
      disciplinas_Bsi(diciplina_id: 40, diciplina_name: "Optativa V: Fundamentos de Criptografia", isCheck: false),
      disciplinas_Bsi(diciplina_id: 41, diciplina_name: "Optativa VI: Modelagem Matemático-Computacional aplicada a epidemiologia", isCheck: false),
    ];
  }
}*/

class ListSearch extends StatefulWidget {
  ListSearchState createState() => ListSearchState();
}

class ListSearchState extends State<ListSearch> {

  TextEditingController _textController = TextEditingController();
  final _saved = <String>{};
  final _biggerFont = TextStyle(fontSize: 18);
  static List<String> mainDataList = [

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



