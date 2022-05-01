import 'package:flutter/material.dart';
import '../components/botao_voltar.dart';

const titulo = 'Disciplina';

class Comentario extends StatelessWidget {
  const Comentario({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Center(
                child: Column(children: [
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
      const BotaoVoltar()
    ]))));
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
