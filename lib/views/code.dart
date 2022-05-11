import 'disciplinas.dart';
import 'count.dart';

codeCadeiras(cadeirasCount, cursadasDisciplinas) {  
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
  List disciplinas_cursadas = cursadasDisciplinas;

  List lista = [];
  for (var el in dic.keys) {
    lista.add(el);
  }

  List cadeiras_disponiveis = [];

  for(var i in lista){
    if (disciplinas_cursadas.contains(i)){
      dic[i] = true;
    } 
    else {
      cadeiras_disponiveis.add(i);
    }
  }
  final cadeirasPrint = [];
  for (int i = 0; i < cadeirasCount; i++){
    cadeirasPrint.add(cadeiras_disponiveis[i]);
  }
  return cadeirasPrint;
}

listas() {  
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
  List lista = [];
  for (var el in dic.keys) {
    lista.add(el);
  }
  return lista;
}

final cadeirasCount = qtdCadeiras;
final cursadasDisciplinas = cadeiras_cursadas;
final cadeirasPrint = codeCadeiras(cadeirasCount, cursadasDisciplinas);

  
