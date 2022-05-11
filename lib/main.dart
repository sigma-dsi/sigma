import 'package:flutter/material.dart';
import 'package:projeto_sigma/views/app_widget.dart';
import 'package:firebase_core/firebase_core.dart';

void firebase() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyC7Hs7dWOfxlvr5vGEODmLBHRxELOv5xgk",
          appId: "1:300519293200:android:a072fb5006bb1f9dea6595",
          messagingSenderId: "695673792572",
          projectId: "cellular-hybrid-314520"));
}

void main() {
  runApp(const AppWidget()); //AppWidget()
}

/*FirebaseAuth auth = FirebaseAuth.instance;
  String email = "artillishernique@gmail.com";
  String senha = '123456';
  auth.createUserWithEmailAndPassword(email: email, password: senha);*/
//runApp(AppWidget());

/*MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService())
      ],
      child: AppWidget(),
    ),*/
