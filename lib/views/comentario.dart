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
                        onPressed: () => itemSended(_newComentario, user),
                      )
                    ],
                  )
                ],
              )),
        )
      );
    }

    /*Widget strembuilder(){
      return StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection("lista_Disciplina")
              .doc(indice).snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {

          }
      )
    }*/

  itemSended(_newComentario, user) {
    String indice = widget.disciplina.indice.toString();
    List comentario = widget.disciplina.comentario.toList();
    comentario.add(_newComentario.text);
    List usuarios = widget.disciplina.usuario.toList();
    usuarios.add(user);

    FirebaseFirestore.instance.collection("lista_Disciplinas").doc(indice).update({
      "comentario":comentario,
      "usuario":usuarios,
    });
  }
}

