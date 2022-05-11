import 'package:flutter/material.dart';
import 'package:projeto_sigma/views/count.dart';
import 'package:projeto_sigma/views/disciplinas.dart';
import 'code.dart';
import 'count.dart';
import 'disciplinas.dart';

final _suggestions = codeCadeiras(qtdCadeiras,cadeiras_cursadas);

class IndicacaoDisc extends StatelessWidget {
  const IndicacaoDisc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
      Image.asset("assets/images/logo1.png", height: 150),
      const Text(
      'Disciplinas Indicadas ?',
      style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.3)),
      const SizedBox(
        height: 60,
      ),
      for(int i = 0; i < qtdCadeiras; i++ ) _screen(i),
      const SizedBox(
        height: 60,
      ),
      _BotaoVoltar()
    ]))));
  }

  Widget _screen(i) { //valor escolhido pelas disciplinas
      return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ListTile(
                title: Text(_suggestions[i]),
                subtitle: Text('${i+1}º'),
            ),
          ],
        ),
      );
  }
}


class _BotaoVoltar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed('/');
            print(cadeiras_cursadas);
          }, 
          child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xff0303ff),
                border: Border.all(color: const Color(0xff0303ff)),
              ),
              child: const Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 123),
                      child: Text(
                        'VOLTAR',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          decorationStyle: TextDecorationStyle.dotted,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      )))),
        )
      ],
    ));
  }
}
