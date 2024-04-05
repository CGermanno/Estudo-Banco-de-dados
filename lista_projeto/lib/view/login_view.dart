// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

/// variaveis
final txtValor1 = TextEditingController();
final txtValor2 = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 107, 168, 233), // Azul claro
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            // ignore: prefer_const_literals_to_create_immutables
            colors: [
              Color.fromARGB(255, 107, 168, 233), // Azul claro
              Color(0xFFE0E0E0), // Cinza claro
            ],
            stops: [0.3, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 0.01, 50, 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Colors.grey),
                ),
                child: Container(
                  color: Colors.white, // Cor de fundo

                  child: Align(
                    alignment: Alignment.center,
                    child: const Icon(
                      Icons.person,
                      size: 200,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // CAMPO DE TEXTO
              TextFormField(
                controller: txtValor1,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Login',

                  filled: true, // Define como preenchido
                  fillColor: Colors
                      .white, // Cor de preenchimento                  labelText: 'Login',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person_4),
                ),
              ),
              const SizedBox(height: 10),

              TextFormField(
                controller: txtValor2,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                  filled: true, // Define como preenchido
                  fillColor: Colors.white, // Cor de preenchimento
                  prefixIcon: const Icon(Icons.key),
                ),
                //
                // VALIDAÇÃO
                //
                validator: (value) {
                  if (value == null) {
                    return 'Informe o usuário';
                  } else if (value.isEmpty) {
                    return 'Vazio, informar dados';
                  }
                  //Retornar null significa sucesso na validação
                  return null;
                },
              ),

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  //Btn_Logar
                  ElevatedButton(
                    onPressed: () {
                      // botao logar
                      Navigator.pushNamed(
                        context,
                        'logado',
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Define a cor de fundo como branco
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              18.0), // Define a forma do botão
                        ),
                      ),
                    ),
                    child: const Text('Logar'),
                  ),






                  //espacinho
                  const SizedBox(width: 20),





                  //Btn_Criar Conta
                  ElevatedButton(
                    onPressed: () {
                      // botao logar
                      Navigator.pushNamed(
                        context,
                        't2',
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              18.0), // Define a forma do botão
                        ),
                      ),
                    ),
                    child: const Text('Criar'),
                  ),
                ],
              ),
              
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      // Adicione aqui para redefinir a senha
                    },
                    child: const Text('Esqueci minha senha'),
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

void main() {
  runApp(MaterialApp(
    home: const LoginView(),
  ));
}