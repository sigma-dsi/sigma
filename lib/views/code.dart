import 'disciplinas.dart';
import 'count.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

codeCadeiras(cadeirasCount, cursadasDisciplinas, lista_cadeiras) {
  List lista_discente = lista_cadeiras;

  for (var cadeira in cursadasDisciplinas) {
    lista_discente.remove(cadeira);
    //lista_cadeira.remove(cadeira);
  }

  final cadeirasprint = [];
  for (int index = 0; index < cadeirasCount; index++) {
    cadeirasprint.add(lista_discente[index]);
    //cadeirasprint.add(lista_cadeira[index]);
  }
  return cadeirasprint;
}

List<String> lista_cadeira = [];
final List<dynamic> lista_comentario = [];
final cadeirasCount = qtdCadeiras;
final cursadasDisciplinas = cadeiras_cursadas;
