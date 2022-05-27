import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
  var deslike;
  var like;

  void initState() {
    lista_comentario = widget.disciplina.comentario;
    lista_email = widget.disciplina.usuario;
    deslike = widget.disciplina.deslike;
    like = widget.disciplina.like;
    super.initState();
  }

  void lista_coment() {
    setState(() {
      lista_comentario;
      lista_email;
      like = widget.disciplina.like;
      deslike = widget.disciplina.deslike;
    });
  }

  _buildbody() {
    return SingleChildScrollView(
        child: Center(
      child: Container(
          margin: const EdgeInsets.only(top: 0.0),
          child: Column(
            children: <Widget>[
              //buildlista(),
              //const SizedBox(height: 50),
              for (int i = 0; i < lista_comentario.length; i++)
                Card(
                  elevation: 10,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    alignment: Alignment.centerLeft,
                    child: ListTile(
                        title: Text(lista_comentario[i]),
                        subtitle: Text(lista_email[i])),
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Center(child: Text('Isso foi útil?')),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                IconButton(
                  onPressed: () {
                    setState(
                      () {
                        deslikeUpdated();
                      },
                    );
                  },
                  icon: const Icon(Icons.thumb_down),
                  color: Color(0xff0303ff),
                ),
                Text('$deslike'),
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    setState(() {
                      likeUpdated();
                    });
                  },
                  icon: const Icon(Icons.thumb_up),
                  color: Color(0xff0303ff),
                ),
                Text('$like'),
              ]),
              //const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    width: 300,
                    height: 100,
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
                      backgroundColor: Color(0xff0303ff),
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                      mini: true,
                      onPressed: () {
                        itemSended(_newComentario, user);
                      })
                ],
              )
            ],
          )),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final user = usuario.email;
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.disciplina.nome),
        ),
        body: _buildbody());
  }

  _body() {
    return FutureBuilder<String>(
        future: getfirebase(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("Erro ao acessar os dados"));
          }

          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return _buildbody();
        });
  }

  //Aqui onde tem de chamar Disciplina
  itemSended(_newComentario, user) async {
    String indice = widget.disciplina.indice.toString();
    lista_comentario.add(_newComentario.text);
    lista_email.add(user);
    lista_coment();
    FirebaseFirestore.instance
        .collection("lista_Disciplinas")
        .doc(indice)
        .update({
      "comentario": lista_comentario.toList(),
      "usuario": lista_email.toList(),
    });
    //List<Disciplina> comentarios =  await getcomentarios();
    //_streamController.add(comentarios);
  }

  getcomentarios() async {
    var db = FirebaseFirestore.instance
        .collection("lista_Disciplinas")
        .orderBy("indice");
    var result = await db.get();
    Disciplina disciplina;
    for (var doc in result.docs) {
      tabela_firebase.add(Disciplina(
          nome: doc['nome'],
          usuario: doc['usuario'],
          comentario: doc["comentario"],
          indice: doc['indice'],
          like: doc['like'],
          deslike: doc['deslike']));
    }

    List comentarios = await widget.disciplina.comentario;
/*  List listaComentarios = widget.disciplina.comentario;
  _streamController.add(listaComentarios);*/
  }

  deslikeUpdated() async {
    String indice = widget.disciplina.indice.toString();
    deslike += 1;
    widget.disciplina.deslike += 1;
    lista_coment();
    var db = await FirebaseFirestore.instance
        .collection("lista_disciplinas")
        .doc(indice)
        .update({"deslike": FieldValue.increment(1)});
  }

  likeUpdated() async {
    String indice = widget.disciplina.indice.toString();
    like += 1;
    widget.disciplina.like += 1;
    lista_coment();
    var db = await FirebaseFirestore.instance
        .collection("lista_disciplinas")
        .doc(indice)
        .update({"like": FieldValue.increment(1)});
  }
}
