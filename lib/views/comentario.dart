import 'package:flutter/material.dart';
import 'package:projeto_sigma/repositories/disciplina_repository.dart.dart';
import '../models/list_disciplinas.dart';

class ComentarioPage extends StatefulWidget {
  Disciplina disciplina;
  ComentarioPage({Key? key, required this.disciplina}) : super(key: key);

  @override
  _ComentarioPageState createState() => _ComentarioPageState();
}

class _ComentarioPageState extends State<ComentarioPage> {
  final _form = GlobalKey<FormState>();
  final _valor = TextEditingController();
  final coment = <Disciplina>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.disciplina.nome),
        ),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              const SizedBox(height: 50),
              Card(
                elevation: 10,
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  alignment: Alignment.centerLeft,
                  child: Text(widget.disciplina.comentario,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        decorationStyle: TextDecorationStyle.dotted,
                        fontSize: 20,
                        color: Colors.black87,
                      )),
                ),
              ),
              const SizedBox(height: 50),
              Comentar()
            ],
          )),
        ));
  }

  Comentar() {
    return Container(
        alignment: Alignment.center,
        width: 300,
        height: 300,
        child: Form(
          key: _form,
          child: TextFormField(
            controller: _valor,
            style: const TextStyle(fontSize: 22),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Adicione seu comentário',
                suffixIcon: Icon(Icons.send)),
            validator: (value) {},
          ),
        ));
  }
}
