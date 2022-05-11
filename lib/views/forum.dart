import 'package:flutter/material.dart';

class Forum extends StatelessWidget {
  const Forum({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        child: ListViewBuilder(),
        width: 300,
      ),
    ));
  }
}

class _BotaoVoltar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/'),
          child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xff0303ff),
                border: Border.all(color: const Color(0xff0303ff)),
              ),
              child: const Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 123),
                      child: Text(
                        'VOLTAR',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          decorationStyle: TextDecorationStyle.dotted,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      )))),
        )
      ],
    ));
  }
}

class ListViewBuilder extends StatelessWidget {
  final List<String> itens = [
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
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itens.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 50,
              color: Colors.white60,
              child: Card(child: Text(itens[index])));
        });
  }
}
