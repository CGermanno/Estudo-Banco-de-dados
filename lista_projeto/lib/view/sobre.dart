
//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tela5View extends StatefulWidget {
  const Tela5View({Key? key}) : super(key: key);

  @override
  State<Tela5View> createState() => _Tela5ViewState();
}

class _Tela5ViewState extends State<Tela5View> {
  final txtValor3 = TextEditingController();
  final txtValor4 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o APP.'),
        backgroundColor: Colors.grey[300],
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300], // Define o fundo como Cinza claro
        ),

        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 50, 10, 50),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
            Text(
              'Tema Escolhido:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Lista de Compra Simples',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Text(
              'Objetivo do Aplicativo:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Proporcionar uma lista de compras móvel',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 40),
            Text(
              'Desenvolvedor:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Carlos Germano Gasaprelho de Souza',
              style: TextStyle(fontSize: 18),
            ),

            SizedBox(height: 40),

            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'login',
                  );
                  },
                  child: Text('Voltar'),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
    );
    
  }
}
