import 'package:flutter/material.dart';

import 'menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {'/': (context) => MenuPage()},
        debugShowCheckedModeBanner: false);
    // ignore: prefer_const_constructors
  }
}
