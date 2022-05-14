import 'package:flutter/material.dart';
import 'package:projeto_sigma/views/count.dart';
import 'package:projeto_sigma/views/disciplinas.dart';
import '../components/botao_voltar.dart';
import 'code.dart';
import 'count.dart';
import 'disciplinas.dart';

final _suggestions =
    codeCadeiras(qtdCadeiras, cadeiras_cursadas, lista_cadeira);

class IndicacaoDisc extends StatelessWidget {
  const IndicacaoDisc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Disciplinas Indicadass"),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 60,
            ),
            for (int i = 0; i < qtdCadeiras; i++) _screen(i),
            const SizedBox(
              height: 60,
            ),
            BotaoVoltar()
          ],
        ))));
  }

  Widget _screen(i) {
    //valor escolhido pelas disciplinas
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text(_suggestions[i]),
            subtitle: Text('${i + 1}º'),
          ),
        ],
      ),
    );
  }
}
