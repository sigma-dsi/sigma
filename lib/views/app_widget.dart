import "package:flutter/material.dart";
import 'package:projeto_sigma/views/descricao_page.dart';

import 'descricao_page.dart';
import 'disciplinas.dart';
import 'menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const MenuPage(),
      '/selcionarDisc': (context) => const HomePage(),
      '/descricao': (context) => const CursoDesc(),
      '/gradeAtual': (context) => const HomePage(),
    });
  }
}
