import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:projeto_sigma/views/count.dart';
import 'package:projeto_sigma/views/disciplinas.dart';
import '../models/cursadas_disc.dart';
import '../components/botao_voltar.dart';
import '../repositories/code.dart';
import 'count.dart';
import 'disciplinas.dart';
import 'package:projeto_sigma/repositories/disciplina_repository.dart.dart';

class IndicacaoDisc extends StatefulWidget {
  IndicacaoDisc({Key? key}) : super(key: key);

  @override
  _IndicacaoDisc createState() => _IndicacaoDisc();
}

class _IndicacaoDisc extends State<IndicacaoDisc>{
  //const IndicacaoDisc({Key? key}) : super(key: key);
  void initState() {
    super.initState();
    _suggestions;
  }

  final _suggestions = codeCadeiras(qtdCadeiras, CursadasRepository.cursadas_disc, lista_cadeira);
  @override
  Widget build(BuildContext context) {
    //initState();
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
            BotaoVoltar(),
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

  /*getcursadas() async{
    var db = FirebaseFirestore.instance.collection("lista_Disciplinas").orderBy("indice");
    var result = await db.get();
    //Disciplina disciplina;
    for (var doc in result.docs) {
      lista_cadeira.add(doc['nome']);
      lista_comentario.add(doc['comentario']);
      tabela_firebase.add(
          Disciplina(nome: doc['nome'], usuario: doc['usuario'], comentario: doc["comentario"], indice: doc['indice'])
      );
    }
  }*/
}

/*
  String email = 'juca@gmail.com';
  print(email.substring(0,4));
  print(email.indexOf("@")); 
*/