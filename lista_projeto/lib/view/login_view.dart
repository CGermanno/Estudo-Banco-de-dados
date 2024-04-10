//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  /// variaveis para armazenar nome e senha
  final TextEditingController seunome = TextEditingController();
  final TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300], // Define o fundo como Cinza claro
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
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
                      size: 180,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // CAMPO DE TEXTO
              TextFormField(
                controller: seunome,
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
                controller: senha,
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

              //Esqueceu a senha? Recuperar senha
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      // Usando TextButton em vez de Text
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          'novaSenha',
                        );
                      },
                      child: Text(
                        'Esqueceu Sua Senha?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Btn_Logar
                  ElevatedButton(
                    onPressed: () {
                      var nome = seunome.text;
                      Navigator.pushNamed(
                        context,
                        'logado',
                        arguments: nome,
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

              const SizedBox(height: 5),

              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey[30],
                    ),
                  ),
                  Text('Ou Acesse Com'),
                  Expanded(
                    child: Divider(
                      thickness: 2,
                      color: Colors.grey[30],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: ClipOval(
                      child: Image.asset('assets/face.png'),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: ClipOval(
                      child: Image.asset('assets/goog.png'),
                    ),
                  ),
                ],
              ),
                  const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  
                  IconButton(
                  onPressed: () {
                      Navigator.pushNamed(
                        context,
                        'sobre',
                      );
                  },
                  icon: Icon(Icons.info),
                ),
                Text('Sobre'),
                ],
              )
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
