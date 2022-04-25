import 'dart:js';

import 'package:flutter/material.dart';

final listaTeste = [
  'Projeto de Desenvolvimento Tecnológico para o Mundo I',
  'Modelagem de Dados'
      'Empreendedorismo e Inovação',
  'Sistemas de Informação na Internet'
];

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
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 10,
          child: ListView.separated(
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('$index'),
                trailing: const Icon(Icons.chevron_right),
              );
            },
            separatorBuilder: (__, _) => const Divider(),
            itemCount: 25,
          ),
        ),
      ],
    ),
  );
}


// Widget _listDisciplinas() {
//   return ListView.builder(
//       padding: const EdgeInsets.all(16),
//       itemBuilder: (BuildContext _context, int i) {
//         final itens = List<String>.generate(
//             listaTeste.length, (index) => listaTeste[index]);
//         return Text('$itens');
//       });
// }
