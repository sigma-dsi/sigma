import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'package:projeto_sigma/views/indicacao.dart';

final valor = TextEditingController();
var qtdCadeiras;

class count extends StatelessWidget {
  const count({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      elevation: 5,
      padding: EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      backgroundColor: const Color(0xff0303ff),
    );
    return Scaffold(
        appBar: AppBar(
          title: const Text("Disciplinas Indicadass"),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: [
                    const Text(
                        'Quantas disciplinas você\n deseja cursar esse período ?',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3)),
                    Container(
                      padding: EdgeInsets.only(
                          left: 16.0,
                          right: 16.0,
                          top: MediaQuery.of(context).size.height * 0.15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              NumberInputWithIncrementDecrement(
                                controller: valor,
                                widgetContainerDecoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xff0303ff))),
                                min: 1,
                                max: 5,
                              ),
                              const Text(''),
                              const Text('Ex:  Escolha de 1 até 5.')
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SafeArea(
                  child: Container(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    top: MediaQuery.of(context).size.height * 0.15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 300.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          style: flatButtonStyle,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const IndicacaoDisc()),
                            );
                            qtdCadeiras = int.tryParse(valor.text);
                          },
                          child: Text(
                            'PROXIMO',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
            ],
          ),
        ));
  }
}
