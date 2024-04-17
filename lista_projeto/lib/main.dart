// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace


import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


import 'view/lista_3.dart';
import 'view/lista_4.dart';
import 'view/lista_5.dart';
import 'view/lista_6.dart';
import 'view/lista_7.dart';
import 'view/lista_8.dart';
import 'view/login_view.dart';
import 'view/login_2.dart';
import 'view/login_efetuado.dart';
import 'view/nova_senha.dart';
import 'view/sobre.dart';
import 'view/lista_1.dart';
import 'view/lista_2.dart';


void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lista de Compras',
      initialRoute: 'login',
      routes: {
        'login': (context) => LoginView(),
        't2':(context) => Tela2View(),
        'logado':(context) => Tela3View(),
        'novaSenha': (context) => Tela4View(),
        'sobre': (context) => Tela5View(),
        'lista_1':(context) => Tela11View(),
        'lista_2':(context) => Tela22View(),
        'lista_3':(context) => Tela33View(),
        'lista_4':(context) => Tela44View(),
        'lista_5':(context) => Tela55View(),
        'lista_6':(context) => Tela66View(),
        'lista_7':(context) => Tela77View(),
        'lista_8':(context) => Tela88View(),

      },
    );
  }
}

class Tela12View {
}
