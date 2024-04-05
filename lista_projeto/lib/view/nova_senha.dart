// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tela4View extends StatefulWidget {
  const Tela4View({Key? key}) : super(key: key);

  @override
  State<Tela4View> createState() => _Tela3ViewState();
}

class _Tela3ViewState extends State<Tela4View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resetar Senha'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () {
               
                      // botao logar
                      Navigator.pushNamed(
                        context,
                        'logado',
                      );
              },
              child: Text('Confirmar'),
            ),


            OutlinedButton(
              onPressed: () {
                
                      // botao logar
                      Navigator.pushNamed(
                        context,
                        'login',
                      );
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}