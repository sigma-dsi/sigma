import 'package:flutter/material.dart';

class CursoDesc extends StatefulWidget {
  const CursoDesc({Key? key}) : super(key: key);

  static const routeName = '/CursoDesc';
  @override
  _CursoDescState createState() => _CursoDescState();
}

class _CursoDescState extends State<CursoDesc> {
  get children => null;
  get text => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Descrição do curso")),
        body: SingleChildScrollView(
            child: Center(
                child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            _Descricao(),
            const SizedBox(height: 20),
            const SizedBox(
              child: Text(
                "Indicadores do Curso",
                style: TextStyle(
                  decoration: TextDecoration.none,
                  decorationStyle: TextDecorationStyle.dotted,
                  fontSize: 20,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 20),
            _InfoCurso(),
            const SizedBox(height: 50),
          ],
        ))));
  }
}

class _InfoCurso extends StatelessWidget {
  double totalDiscEvad = 500.00;
  double totalDiscForm = 5000;
  double totalDisciplina = 45;
  double avaliaMec = 5.0;

  _InfoCurso({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 15,
        color: Colors.white70,
        child: Wrap(
            alignment: WrapAlignment.end,
            spacing: 10.0,
            runSpacing: 10.0,
            direction: Axis.vertical,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(
                      width: 130.0,
                      height: 100.0,
                      child: Column(
                        children: [
                          const SizedBox(height: 15.0),
                          const SizedBox(
                            child: Text("Total Discentes Evadidos",
                                textAlign: TextAlign.center),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                              child: Text(
                            "$totalDiscEvad",
                            style: const TextStyle(fontSize: 30),
                          ))
                        ],
                      )),
                  const SizedBox(width: 30),
                  SizedBox(
                    width: 130.0,
                    height: 100.0,
                    child: Column(
                      children: [
                        const SizedBox(height: 15.0),
                        const SizedBox(
                            child: Text("Total Discentes Formados ",
                                textAlign: TextAlign.center)),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                            child: Text("$totalDiscForm",
                                style: const TextStyle(fontSize: 30)))
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                      width: 130.0,
                      height: 100.0,
                      child: Column(
                        children: [
                          const SizedBox(
                            child: Text("Total de Disciplinas ",
                                textAlign: TextAlign.center),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          SizedBox(
                              child: Text(
                            "$totalDisciplina",
                            style: const TextStyle(fontSize: 30),
                          ))
                        ],
                      )),
                  const SizedBox(width: 30),
                  SizedBox(
                    width: 130.0,
                    height: 100.0,
                    child: Column(
                      children: [
                        const SizedBox(
                            child: Text("Nota de avaliação do Curso no MEC  ",
                                textAlign: TextAlign.center)),
                        const SizedBox(
                          height: 10.0,
                        ),
                        SizedBox(
                            child: Text("$avaliaMec ",
                                style: const TextStyle(fontSize: 30)))
                      ],
                    ),
                  ),
                ],
              ),
            ]));
  }
}

class _Descricao extends StatelessWidget {
  final String descurso =
      """O objetivo principal do curso de Bacharelado em Sistemas de Informação é formar profissionais munidos de conhecimentos técnicos e científicos, para o desenvolvimento de sistemas de informação intensivos em software nas mais variadas complexidades. O egresso será capaz de projetar, implantar, gerenciar e inovar processos envolvendo sistemas de informação para resolver problemas das organizações, governo, sociedade e modificar o contexto sócio-político-econômico-científico no qual se encontra.""";
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        const Text(
          "Bacharelado Em Sistemas De Informação",
          style: TextStyle(
            decoration: TextDecoration.none,
            decorationStyle: TextDecorationStyle.dotted,
            fontSize: 20,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 15.0),
        Text(descurso,
            textAlign: TextAlign.justify,
            style: const TextStyle(
              decoration: TextDecoration.none,
              decorationStyle: TextDecorationStyle.dotted,
              fontSize: 15,
              color: Colors.black87,
            ))
      ]),
      alignment: Alignment.center,
      color: Colors.white38,
      width: 300,
      height: 300,
    );
  }
}
