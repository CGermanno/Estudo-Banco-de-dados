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
        backgroundColor: const Color.fromARGB(255, 60, 72, 249),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/waa.PNG'),
            fit: BoxFit.cover,
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
                  color: Colors.white, // Cor de fundo do ícone

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
                  OutlinedButton(
                    onPressed: () {
                      // botao logar
                    },
                    child: const Text('Logar'),
                  ),

                  //espacinho
                  const SizedBox(width: 20),

                  OutlinedButton(
                    onPressed: () {
                      // botao voltar
                    },
                    child: const Text('Voltar'),
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
