import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:projeto_sigma/repositories/disciplina_repository.dart.dart';
import '../models/list_disciplinas.dart';
import 'code.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.disciplina.nome),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: <Widget>[
              //buildlista(),
              //const SizedBox(height: 50),
              for(var comentario in widget.disciplina.comentario) Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.centerLeft,
                  child: Text(comentario),
                  ),
                ),
              //const SizedBox(height: 50),
            Row(
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
                  onPressed: () => itemSended(_newComentario, user),
                )
              ],
              )
            ],
          )),
        )
      );
    }

  itemSended(_newComentario, user) {
    var db = FirebaseFirestore.instance.collection("forum_array");
    db.add({
      'comentario': _newComentario.text,
      'usuario': user,
    });
  }
}

