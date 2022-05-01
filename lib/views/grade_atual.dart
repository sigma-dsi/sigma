import 'package:flutter/material.dart';
import '../components/botao_voltar.dart';

class GradeAtual extends StatelessWidget {
  const GradeAtual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      const SizedBox(height: 90),
      Card(child: Image.asset("assets/images/grade_atual.png")),
      const SizedBox(height: 50),
      const BotaoVoltar(),
    ]))));
  }
}
