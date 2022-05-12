import 'package:flutter/material.dart';

class BotaoProximo extends StatelessWidget {
  const BotaoProximo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        InkWell(
          onTap: () => Navigator.of(context).pushNamed('/indicacao'),
          child: Ink(
              decoration: BoxDecoration(
                color: const Color(0xff0303ff),
                border: Border.all(color: const Color(0xff0303ff)),
              ),
              child: const Expanded(
                  child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 12, horizontal: 120),
                      child: Text(
                        'PROXIMO',
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
