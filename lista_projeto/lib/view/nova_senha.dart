//ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Tela4View extends StatefulWidget {
  const Tela4View({Key? key}) : super(key: key);

  @override
  State<Tela4View> createState() => _Tela3ViewState();
}

/// variaveis
/// melhorar futuramente
final txtValor3 = TextEditingController();
final txtValor4 = TextEditingController();

class _Tela3ViewState extends State<Tela4View> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resetar Senha'),
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300], // Define o fundo como Cinza claro
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
          child: Column(
            //
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
                  color: Colors.white,
                  child: const Icon(
                    Icons.person,
                    size: 180,
                    color: Colors.grey,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: txtValor3,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'E-mail de cadastro',

                  filled: true, // Define como preenchido
                  fillColor: Colors.white, // Cor de preenchimento
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person_4),
                ),
              ),

              const SizedBox(height: 10),

              // CAMPO DE TEXTO
              TextFormField(
                controller: txtValor3,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Nova Senha',

                  filled: true, // Define como preenchido
                  fillColor: Colors
                      .white, // Cor de preenchimento                  labelText: 'Login',
                  border: OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.person_4),
                ),
              ),

              const SizedBox(height: 10),

              TextFormField(
                controller: txtValor4,
                style: const TextStyle(fontSize: 15),
                decoration: InputDecoration(
                  labelText: 'Confirmar Senha',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: const Icon(Icons.key),
                ),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  // Lógica para redefinir a senha
                  // Por exemplo, enviar um e-mail de redefinição de senha

                  Navigator.pushNamed(
                    context,
                    'logado',
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
                child: Text(
                  'Confirmar',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    'login',
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
                child: Text(
                  'Voltar',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
            //
          ),
        ),
      ),
    );
  }
}
