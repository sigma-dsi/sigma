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
      const SizedBox(height: 50),
      const SizedBox(
        child: Text(
          "Grade Curricular",
          style: TextStyle(
            decoration: TextDecoration.none,
            decorationStyle: TextDecorationStyle.dotted,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
      ),
      const SizedBox(height: 30),
      Card(child: Image.asset("assets/images/grade_atual.png")),
      const SizedBox(height: 50),
      const BotaoVoltar(),
    ]))));
  }
}
