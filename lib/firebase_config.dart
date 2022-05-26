import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:projeto_sigma/repositories/code.dart';
import 'package:projeto_sigma/models/list_disciplinas.dart';
import 'package:projeto_sigma/repositories/disciplina_repository.dart.dart';

String email = usuario.email; 
int indice =  email.indexOf("@");

class DefaultFirebaseConfig {
  static FirebaseOptions? get platformOptions {
    if (kIsWeb) {
      return const FirebaseOptions(
        apiKey: "AIzaSyC7Hs7dWOfxlvr5vGEODmLBHRxELOv5xgk",
        projectId: "cellular-hybrid-314520",
        messagingSenderId: "695673792572",
        appId: "1:300519293200:android:a072fb5006bb1f9dea6595",
      );
    } else {
      log("Analytics Dart-only initializer doesn't work on Android, please make sure to add the config file.");

      return null;
    }
  }
}

getfirebase() async{
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
}

getcursadas() async{
  email = email.substring(0,indice);
  var db = await FirebaseFirestore.instance.collection("lista_Disciplinas_cursadas").doc("novo");
  var result = await db.get();
  //print(result["user"]);
  for(var el in result["user"]){
    CursadasRepository.usuariosFirebase.add(el);
    if (el == email){
      CursadasRepository().getAddCadeiras(result[email]);
      cursadasbool = true;
    }
  }
  print(CursadasRepository.cursadas_disc);
  /*var chave = result["usuario"].keys;
  var valor = result["usuario"].values;
  var len = result["usuario"].keys.length;
  print(len);
  //var el = result["usuario"];
  print(result["usuario"].values);
  print(result["usuario"].keys);
  Map dic = {};
  result["usuario"].values.forEach(print);
  var keysAndvalues = chave.Zip(valor, (n, w) => { chave = n,valor = w });
  for(var el in keysAndvalues){
    print(el.chave);
    print(el.valor);
  }*/
  /*for(int i = 0; i < len; i++){
    dic[chave[i]] = valor[i];
  }*/
  //print(dic);
  //print(result["usuario"]);
  //print(teste);

  /*for (var el in result.docs){
    var id = el.id;
    print(el);
  }*/
  /*var result = await db;
  print(result.data());*/

  /*List lista = ['dsi', 'projeto 1', 'projeto 2'];
  var db = FirebaseFirestore.instance.collection("lista_Disciplinas_cursadas").doc("novo").set({
    "usuario":{"julio@gmail.com":['dsi', 'projeto 1'], "juliano@gmail.com":['projeto 3', 'projeto 4']}
  });*/

  /*var result =  await db.get();
  for (var doc in result.docs){
    print(doc['Nomes_Disciplinas']);
    print(doc["julio@gmail.com"]);
  }*/
  /*var db = FirebaseFirestore.instance.collection("lista_Disciplinas_cursadas");
  var result = await db.get();
  for (var doc in result.docs) {
    listaCursadasFirebase.add(
        Cursadas(Nomes_Disciplinas: doc['Nomes_Disciplinas'], usuario: doc['usuario'])
    );
    print(doc['Nomes_Disciplinas']);
    print(doc['usuario']);
  }*/
}

getVerificarUser(email) {
  var temuser = CursadasRepository.usuariosFirebase.contains(email);
  if(temuser == false){
    CursadasRepository.usuariosFirebase.add(email);
  }
}

getTemCursadas () {
  email = email.substring(0,indice);
  if(cursadasbool == true) {
    FirebaseFirestore.instance.collection("lista_Disciplinas_cursadas").doc("novo").update({
      email:CursadasRepository.cursadas_disc.toList(),
    });
  } else {
    getVerificarUser(email);
    FirebaseFirestore.instance.collection("lista_Disciplinas_cursadas").doc("novo").update({
      email:CursadasRepository.cursadas_disc.toList(),
      "user":CursadasRepository.usuariosFirebase.toList()
    });
  }
}
/*void addlistdb() async{
  var db = FirebaseFirestore.instance.collection('lista_disciplina');
  var result = await db.get();
  int cont = 0;
  db.snapshots().listen((r) {
    result = r;
    for(var doc in result.docs){
      lista_cadeira.add(r.docs[cont]['nome']);
      cont++;
    }
  });
}*/