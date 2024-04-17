// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Tela2View extends StatefulWidget {
  const Tela2View({Key? key}) : super(key: key);

  @override
  State<Tela2View> createState() => _Tela2ViewState();
}

class _Tela2ViewState extends State<Tela2View> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Cadastro de Usuário'),
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
                  color: Color.fromARGB(255, 255, 255, 255), // Cor de fundo
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


              
              TextFormField(
                style: const TextStyle(fontSize: 15),
                controller: nomeController,
                decoration: InputDecoration(
                    labelText: 'Nome',
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(),
                    filled: true, // Define como preenchido
                    fillColor: Colors.white),
              ),


              SizedBox(height: 5),


              TextFormField(
                style: const TextStyle(fontSize: 15),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    filled: true, // Define como preenchido
                    fillColor: Colors.white),
              ),


              SizedBox(height: 5),


              TextFormField(
                style: const TextStyle(fontSize: 15),
                controller: senhaController,
                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    prefixIcon: Icon(Icons.lock),
                    border: OutlineInputBorder(),
                    filled: true, // Define como preenchido
                    fillColor: Colors.white),
              ),


              SizedBox(height: 20),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      // botao Cadastrar
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
                    child: Text('Cadastrar'),
                  ),


                  SizedBox(width: 20),


                  OutlinedButton(
                    onPressed: () {
                      // botao Cadastrar
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
                    child: Text(' Voltar '),
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
