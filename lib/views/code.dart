import 'disciplinas.dart';
import 'count.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

codeCadeiras(cadeirasCount, cursadasDisciplinas, lista_cadeiras) {
  
  for(var cadeira in cursadasDisciplinas){
    lista_cadeiras.remove(cadeira);
  }

  final cadeirasprint = [];
  for (int index = 0; index < cadeirasCount; index++){
    cadeirasprint.add(lista_cadeiras[index]);
  }
  return cadeirasprint;
}

List<String> lista_cadeira = [];

final cadeirasCount = qtdCadeiras;
final cursadasDisciplinas = cadeiras_cursadas;



  
