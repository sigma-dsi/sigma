import "package:flutter/material.dart";
import 'package:projeto_sigma/views/descricao_page.dart';
import 'package:projeto_sigma/views/grade_atual.dart';
import 'package:projeto_sigma/views/indicacao.dart';

import 'count.dart';
import 'descricao_page.dart';
import 'disciplinas.dart';
import 'forum.dart';
import 'menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const MenuPage(),
      '/selcionarDisc': (context) => const count(),
      '/descricao': (context) => const CursoDesc(),
      '/gradeAtual': (context) => const GradeAtual(),
      '/indicacao': (context) => const IndicacaoDisc(),
      '/forum': (context) => const Forum(),
      'disciplina': (context) => const HomePage(),
    });
  }
}
