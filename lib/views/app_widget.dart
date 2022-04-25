import 'package:flutter/material.dart';
import 'package:projeto_sigma/views/forum_page.dart';

import 'menu_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (context) => MenuPage(),
          '/forum': (context) => ForumPage()
        },
        debugShowCheckedModeBanner: false);
    // ignore: prefer_const_constructors
  }
}
