import 'dart:js';
import '../components/botao_voltar.dart';
import 'package:flutter/material.dart';

class ForumPage extends StatefulWidget {
  const ForumPage({Key? key}) : super(key: key);

  @override
  _ForumPageState createState() => _ForumPageState();
}

class _ForumPageState extends State<ForumPage> {
  Widget build(BuildContext context) {
    return Scaffold(body: _listDisciplinas());
  }
}

Widget _listDisciplinas() {
  final listaTeste = [
    'Projeto de Desenvolvimento Tecnológico para o Mundo I',
    'Modelagem de Dados',
    'Empreendedorismo e Inovação',
    'Sistemas de Informação na Internet',
    'Introdução a Teoria da Computação',
    'Analise de dados',
    'Educação Fisica',
    'Elementos Computacionais',
    'Calculo 1'
  ];
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: ListView.separated(
            shrinkWrap: true,
            itemCount: listaTeste.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(listaTeste[index]),
                trailing: const Icon(Icons.chevron_right),
              );
            },
            separatorBuilder: (__, _) => const Divider(),
          ),
        ),
        const BotaoVoltar()
      ],
    ),
  );
}
