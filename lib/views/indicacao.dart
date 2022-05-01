import 'package:flutter/material.dart';
import '../components/botao_voltar.dart';

class IndicacaoDisc extends StatelessWidget {
  const IndicacaoDisc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      const SizedBox(
        height: 300,
      ),
      const Text("Página em construção"),
      const SizedBox(
        height: 300,
      ),
      const BotaoVoltar()
    ]))));
  }
}
