import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_sigma/models/list_disciplinas.dart';
import 'package:projeto_sigma/views/app_widget.dart';
import 'firebase_config.dart';
import 'package:projeto_sigma/views/code.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseConfig.platformOptions);
  var db = FirebaseFirestore.instance.collection("lista_Disciplinas");
  var result = await db.get();
  for (var doc in result.docs) {
    lista_cadeira.add(doc['nome']);
    lista_comentario.add(doc['comentario']);
  }

  var dbforum = FirebaseFirestore.instance.collection("lista_Disciplinas");
  var result_forum = await dbforum.get();
  for (var doc in result_forum.docs) {
    //print('$doc["nome"]\n $doc["usuario"]');
    Disciplina disciplina;
    tabela_firebase.add(Disciplina(
        nome: doc['nome'],
        usuario: doc['usuario'],
        comentario: doc['comentario'],
        deslike: doc['deslike'],
        like: doc['like'],
        indice: doc['indice']));
    print(result_forum);
  }
  /*for(var el in tabela_firebase){
    print(el.usuario);
    print(el.nome);
    print(el.comentario);
  }*/

  runApp(new AppWidget()); //AppWidget()
}




/*listas() {
  FirebaseFirestore db = FirebaseFirestore.instance;
  Map dic = {
//1º Período
    'Projeto Interdisciplinar para Sistemas de Informação I': false,
    "Fundamentos Matemáticos para Sistemas de Informação I": false,
    "Sustentabilidade em Sistemas de Informação": false,
    "Introdução à Administração": false,
    "Princípios de Programação": false,
//2º Período
    "Projeto Interdisciplinar para Sistemas de Informação II": false,
    "Fundamentos Matemáticos para Sistemas de Informação II": false,
    "Fundamentos de Problemas Computacionais I": false,
    "Elementos de Sistemas Computacionais": false,
    "Fundamentos de Sistemas de Informação": false,
//3º Período
    "Projeto Interdisciplinar para Sistemas de Informação II": false,
    "Projeto Interdisciplinar para Sistemas de Informação III": false,
    "Desenvolvimento de Sistemas de Informação": false,
    "Engenharia para Sistemas de Informação I": false,
    "Introdução ao Armazenamento e Análise de Dados": false,
//4º Período
    "Projeto Interdisciplinar para Sistemas de Informação IV": false,
    "Princípios de Software Básico": false,
    "Fundamentos de Problemas Computacionais II": false,
    "Sistemas de Informação na Internet": false,
//5º Período
    "Projeto de Desenvolvimento Tecnológico para o Mundo I": false,
    "Segurança e Auditoria de Sistemas": false,
    "Engenharia para Sistemas de Informação II": false,
    "Empreendedorismo e Inovação": false,
//6º Período
    "Projeto de Desenvolvimento Tecnológico para o Mundo II": false,
    "Cálculo N1": false,
    "Engenharia para Sistemas de Informação III": false,
    "Modelagem de Dados": false,
//7º Período
    "Projeto de Soluções Complexas I": false,
    "Projetos para a Sociedade I": false,
    "Estatística Aplicada à Análise de Dados": false,
    "Princípios da Teoria da Computação": false,
//8º Período
    "Gestão do Conhecimento": false,
    "Fundamentos de Estratégia Competitiva": false,
    "Análise Organizacional e de Processos": false,
//9º Período - Optativa
    "Optativa I: Reconhecimento de Padrões": false,
    "Optativa II: Internet das Coisas": false,
    "Optativa III: Sistemas Colaborativos": false,
    "Optativa V: Introdução a Computação Quântica": false,
    "Optativa VII: Fundamentos de Criptografia": false,
    "Optativa VIII: Modelagem Matemático-Computacional aplicada a epidemiologia": false
  };
  int cont = 0;
  for (var el in dic.keys) {
    db.collection('lista_disciplina')
    .doc('$cont')
    .set({'nome':el});
    cont += 1;
  }
}*/