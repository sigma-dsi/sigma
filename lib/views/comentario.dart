import 'package:flutter/material.dart';

const titulo = 'Discipliana';

class Comentario extends StatelessWidget {
  const Comentario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
      Image.asset("assets/images/logo1.png", height: 150),
      const Text("Página em construção"),
      const SizedBox(
        height: 80,
      ),
      const Text(titulo),
      Row(
        children: [],
      ),
      const SizedBox(
        height: 80,
      ),
      _BotaoVoltar()
    ]))));
  }
}

class _BotaoVoltar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/'),
          child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xff0303ff),
                border: Border.all(color: const Color(0xff0303ff)),
              ),
              child: const Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 123),
                      child: Text(
                        'VOLTAR',
                        style: TextStyle(
                          decoration: TextDecoration.none,
                          decorationStyle: TextDecorationStyle.dotted,
                          fontSize: 12.0,
                          color: Colors.white,
                        ),
                      )))),
        )
      ],
    ));
  }
}

class _CardComentario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const Comentario = 'Muito boa a disciplina';
    return Card(
        child: Row(
      children: [
        Column(
          children: [
            const Text(Comentario),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.thumb_up_alt_outlined),
              tooltip: 'Concordo',
              color: Colors.white54,
              onPressed: () {},
            ),
          ],
        ),
        Column(
          children: [
            IconButton(
              icon: const Icon(Icons.thumb_down_off_alt),
              tooltip: 'Discordo',
              color: Colors.white54,
              onPressed: () {},
            ),
          ],
        ),
      ],
    ));
  }
}
