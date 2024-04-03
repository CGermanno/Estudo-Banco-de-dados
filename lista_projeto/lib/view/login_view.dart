// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

/// variaveis
var txtValor1 = TextEditingController();
var txtValor2 = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 158, 211, 254),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 0.01, 50, 200),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Adicionar imagem posteriormente
            Icon(
              Icons.person,
              size: 200,
            ),

            //
            // CAMPO DE TEXTO
            //

            TextFormField(
              controller: txtValor1,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Login',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_4),
              ),
            ),
            SizedBox(height: 10),

            TextFormField(
              controller: txtValor2,

              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person_4),
              ),
              //
              // VALIDAÇÃO
              //
              validator: (value) {
                if (value == null) {
                  return 'Informe o usuario';
                } else if (value.isEmpty) {
                  return 'Vazio, informar dados';
                }

                //Retornar null significa sucesso na validação
                return null;
              },
            ),

            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    //
                    // botao logar
                    //
                  },
                  child: Text('Logar'),
                ),
                
                //espacinho
                SizedBox(width: 20),

                OutlinedButton(
                  onPressed: () {
                    //
                    // botao voltar
                    //
                  },
                  child: Text('Voltar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
