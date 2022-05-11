import "package:flutter/material.dart";
import 'count.dart';
import 'descricao_page.dart';
import 'package:projeto_sigma/views/grade_atual.dart';
import 'package:projeto_sigma/views/indicacao.dart';
import 'forum_page.dart';
import 'disciplinas.dart';
import 'package:projeto_sigma/views/comentario.dart';
import 'loginscreen.dart';
import 'comentario.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) =>  LoginScreen(),//LoginScreen()
      '/selcionarDisc': (context) => const count(),
      '/descricao': (context) => const CursoDesc(),
      '/gradeAtual': (context) => const GradeAtual(),
      '/indicacao': (context) => const IndicacaoDisc(),
      '/forum': (context) => const ForumPage(),
      'disciplina': (context) => const HomePage(),
      'comentario': (context) => const ComentarioPage(),
    });
  }
}
