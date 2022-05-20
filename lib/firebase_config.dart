import 'dart:developer';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:projeto_sigma/repositories/code.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions? get platformOptions {
    if (kIsWeb) {
      return const FirebaseOptions(
        apiKey: "AIzaSyC7Hs7dWOfxlvr5vGEODmLBHRxELOv5xgk",
        projectId: "cellular-hybrid-314520",
        messagingSenderId: "695673792572",
        appId: "1:300519293200:android:a072fb5006bb1f9dea6595",
      );
    } else {
      log("Analytics Dart-only initializer doesn't work on Android, please make sure to add the config file.");

      return null;
    }
  }
}

void addlistdb() async{
  var db = FirebaseFirestore.instance.collection('lista_disciplina');
  var result = await db.get();
  int cont = 0;
  db.snapshots().listen((r) {
    result = r;
    for(var doc in result.docs){
      lista_cadeira.add(r.docs[cont]['nome']);
      cont++;
    }
  });
}