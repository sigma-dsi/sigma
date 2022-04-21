import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';
import 'home_page.dart';

class count extends StatelessWidget {
  const count({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Center(
            child: Column(
              children: [
                Image.asset("assets/images/logo1.png", height: 150),
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
                            controller: TextEditingController(),
                            widgetContainerDecoration: BoxDecoration(
                                border: Border.all(color: Colors.blue)),
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
                Padding(
                  padding: const EdgeInsets.only(top: 450.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16, bottom: 16),
                          child:
                              Text("VOLTAR", style: TextStyle(fontSize: 12.0))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: SizedBox(
                    width: double.infinity,
                    child: FlatButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: const Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, top: 16, bottom: 16),
                          child: Text("PRÓXIMO",
                              style: TextStyle(fontSize: 12.0))),
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
