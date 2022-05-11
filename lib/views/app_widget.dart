import "package:flutter/material.dart";
import 'comentario.dart';
import 'menu_page.dart';
import 'count.dart';
import 'descricao_page.dart';
import 'package:projeto_sigma/views/grade_atual.dart';
import 'package:projeto_sigma/views/indicacao.dart';
import 'forum_page.dart';
import 'disciplinas.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  get disciplina => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => const MenuPage(),
          '/selcionarDisc': (context) => const count(),
          '/descricao': (context) => const CursoDesc(),
          '/gradeAtual': (context) => const GradeAtual(),
          '/indicacao': (context) => const IndicacaoDisc(),
          '/forum': (context) => const ForumPage(),
          '/disciplina': (context) => const HomePage(),
          '/comentario': (context) => ComentarioPage(disciplina: disciplina),
        });
  }
}
