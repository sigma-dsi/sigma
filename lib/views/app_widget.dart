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

  get disciplina => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: const AppBarTheme(
          color: Color(0xff0303ff),
        )),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => LoginScreen(), //LoginScreen()
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
