import '../models/list_disciplinas.dart';
import '../views/cursadas.dart';
import 'code.dart';

class DisciplinaRepository {
  static List<Disciplina> tabela = tabela_firebase;
}

class CursadasRepository {
  static List cursadas_disc = [];
  static List usuariosFirebase = [];

  getAddCadeiras(lista) {
    bool temCadeira;
    for(var cadeira in lista){
      temCadeira = cursadas_disc.contains(cadeira);
      if(temCadeira == false) {
        cursadas_disc.add(cadeira);
      }
    }
  }

}
