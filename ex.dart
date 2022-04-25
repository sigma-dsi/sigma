import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildListView(BuildContext context) {
  return ListView(children: const <Widget>[
    ListTile(
      title: Text("Sustentabilidade em Sistemas de Informação"),
      //onTap:() {},
    ),
    ListTile(
      title: Text("Fundamentos Matemáticos para Sistemas de Informação I"),
    ),
    ListTile(
      title: Text("Projeto Interdisciplinar para Sistemas de Informação I"),
    ),
    ListTile(
      title: Text("Princípios de Programação"),
    ),
    ListTile(
      title: Text("Introdução à Administração"),
    ),
    ListTile(
      title: Text("Fundamentos de Sistemas de Informação"),
    ),
    ListTile(
      title: Text(
        "Fundamentos Matemáticos para Sistemas de Informação II",
      ),
    ),
    ListTile(
      title: Text("Projeto Interdisciplinar para Sistemas de Informação II"),
    ),
    ListTile(
      title: Text(
        "Fundamentos de Problemas Computacionais I",
      ),
    ),
    ListTile(
      title: Text("Elementos de Sistemas Computacionais"),
    ),
    ListTile(
      title: Text(
        "Engenharia para Sistemas de Informação I",
      ),
    ),
    ListTile(
      title: Text("Introdução ao Armazenamento e Análise de Dados"),
    ),
    ListTile(
      title: Text("Projeto Interdisciplinar para Sistemas de Informação III"),
    ),
    ListTile(
      title: Text("Desenvolvimento de Sistemas de Informação"),
    ),
    ListTile(
      title: Text(
        "Princípios de Software Básico",
      ),
    ),
    ListTile(
      title: Text("Projeto Interdisciplinar para Sistemas de Informação IV"),
    ),
    ListTile(
      title: Text(
        "Fundamentos de Problemas Computacionais II",
      ),
    ),
    ListTile(
      title: Text(
        "Sistemas de Informação na Internet",
      ),
    ),
    ListTile(
      title: Text(
        "Engenharia para Sistemas de Informação II",
      ),
    ),
    ListTile(
      title: Text(
        "Projeto de Desenvolvimento Tecnológico para o Mundo I",
      ),
    ),
    ListTile(
      title: Text(
        "Engenharia para Sistemas de Informação III",
      ),
    ),
    ListTile(
      title: Text(
        "Modelagem de Dados",
      ),
    ),
    ListTile(
      title: Text(
        "Projeto de Desenvolvimento Tecnológico para o Mundo II",
      ),
    ),
    ListTile(
      title: Text(
        "Calculo N1",
      ),
    ),
    ListTile(
      title: Text(
        "Estatística Aplicada à Análise de Dados",
      ),
    ),
    ListTile(
      title: Text(
        "Projeto de Soluções Complexas I / Projetos para a Sociedade I",
      ),
    ),
    ListTile(
      title: Text(
        "Princípios da Teoria da Computação",
      ),
    ),
    ListTile(
      title: Text(
        "Fundamentos de Estratégia Competitiva",
      ),
    ),
    ListTile(
      title: Text(
        "Projeto de Soluções Complexas II / Projeto para Sociedade II",
      ),
    ),
    ListTile(
      title: Text(
        "Análise Organizacional e de Processos",
      ),
    ),
    ListTile(
      title: Text(
        "Gestão do Conhecimento",
      ),
    ),
    ListTile(
      title: Text(
        "Trabalho de Conclusão de Curso",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa I: Reconhecimento de Padrões",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa II: Internet das Coisas",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa III: Sistemas Colaborativos",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa IV: Introdução a Computação Quântica",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa V: Fundamentos de Criptografia",
      ),
    ),
    ListTile(
      title: Text(
        "Optativa VI: Modelagem Matemático-Computacional aplicada a epidemiologia",
      ),
    )
  ]);
}

class Forum extends StatelessWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      Image.asset("assets/images/logo1.png", height: 150),
      const Center(
          child: Text(
        "Veja e comente sobre as disciplinas: ",
        style: TextStyle(
          decoration: TextDecoration.none,
          decorationStyle: TextDecorationStyle.dotted,
          fontSize: 20,
          color: Colors.black87,
        ),
      )),
      ListViewBuilder(),
      const SizedBox(
        height: 100,
      ),
      _BotaoVoltar(),
      const SizedBox(
        height: 30,
      ),
      _BotaoProximo()
    ]))));
  }
}
