import 'dart:async';
import '../main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_sigma/repositories/disciplina_repository.dart.dart';
import '../models/list_disciplinas.dart';
import '../repositories/code.dart';
import '../firebase_config.dart';

class ComentarioPage extends StatefulWidget {
  Disciplina disciplina;
  ComentarioPage({Key? key, required this.disciplina}) : super(key: key);

  @override
  _ComentarioPageState createState() => _ComentarioPageState();
}

class _ComentarioPageState extends State<ComentarioPage> {
  var _newComentario = TextEditingController();
  final _form = GlobalKey<FormState>();
  final coment = <Disciplina>[];
  var user = usuario.email;
  List lista_comentario = [];
  List lista_email = [];

  void initState(){
    lista_comentario = widget.disciplina.comentario;
    lista_email = widget.disciplina.usuario;
    super.initState();
  }

  void lista_coment(){
    setState((){
      lista_comentario;
      lista_email;
    });
  }

  _buildbody() {
    return SingleChildScrollView(
          child: Center(
              child: Column(
                children: <Widget>[
                  //buildlista(),
                  //const SizedBox(height: 50),
                  for(int i = 0; i < lista_comentario.length; i++) Card(
                    elevation: 10,
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      alignment: Alignment.centerLeft,
                      child: ListTile(
                        title: Text(lista_comentario[i]),
                        subtitle: Text(lista_email[i])
                      ),
                    ),
                  ),
                  //const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        width: 300,
                        height: 300,
                        child: Form(
                          key: _form,
                          child: TextFormField(
                            controller: _newComentario,
                            style: const TextStyle(fontSize: 22),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Adicione seu comentário',
                            ),
                          ),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Color(0xff075E54),
                        child: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                        mini: true,
                        onPressed: () {
                          itemSended(_newComentario, user);
                        }
                      )
                    ],
                  )
                ],
              )),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.disciplina.nome),
        ),
        body:  _buildbody()
      );
    }

    _body() {
      return FutureBuilder<String>(
        future: getfirebase(),
        builder: (context, snapshot) {
          if(snapshot.hasError) {
            return Center(child:
              Text("Erro ao acessar os dados")
            );
          }

          if(!snapshot.hasData){
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return _buildbody();
        }

      );
    }

  //Aqui onde tem de chamar Disciplina
  itemSended(_newComentario, user) async{
    String indice = widget.disciplina.indice.toString();
    lista_comentario.add(_newComentario.text);
    lista_email.add(user);
    lista_coment();
    FirebaseFirestore.instance.collection("lista_Disciplinas").doc(indice).update({
      "comentario":lista_comentario.toList(),
      "usuario":lista_email.toList(),
    });
    //List<Disciplina> comentarios =  await getcomentarios();
    //_streamController.add(comentarios);
  }

  getcomentarios() async{
    var db = FirebaseFirestore.instance.collection("lista_Disciplinas").orderBy("indice");
    var result = await db.get();
    Disciplina disciplina;
    for (var doc in result.docs) {
      tabela_firebase.add(
        Disciplina(nome: doc['nome'], usuario: doc['usuario'], comentario: doc["comentario"], indice: doc['indice'])
      );
  }
  List comentarios = await widget.disciplina.comentario;
/*  List listaComentarios = widget.disciplina.comentario;
  _streamController.add(listaComentarios);*/
  }
}