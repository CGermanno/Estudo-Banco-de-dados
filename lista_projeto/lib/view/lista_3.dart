// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//output

import 'package:flutter/material.dart';

class Tela33View extends StatefulWidget {
  const Tela33View({Key? key}) : super(key: key);

  @override
  State<Tela33View> createState() => _Tela33ViewState();
}

class _Tela33ViewState extends State<Tela33View> {
  List<String> listaDeCompras = [];
  final TextEditingController itemController = TextEditingController();
  String nomeDaLista = 'Lista 03';
  List<bool> isCheckedList = [];

  void _mostrarDialogo() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Editar Nome da Lista'),
          content: TextField(
            controller: TextEditingController(text: nomeDaLista),
            onChanged: (newValue) {
              setState(() {
                nomeDaLista = newValue;
              });
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Aqui você pode adicionar a lógica para salvar o novo nome
                Navigator.of(context).pop();
              },
              child: Text('Salvar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nomeDaLista),
        backgroundColor: Colors.blue[500],
        actions: [
          IconButton(
            icon: Icon(Icons.edit),
            onPressed: () {
              _mostrarDialogo();
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.blue[500], // Define cor fundo
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Lista de Compras
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(listaDeCompras.length, (index) {
                      return ListTile(
                        title: Row(
                          children: [
                            Checkbox(
                              value: isCheckedList[index],
                              onChanged: (newValue) {
                                setState(() {
                                  isCheckedList[index] = newValue ?? false;
                                });
                              },
                            ),
                            Text(listaDeCompras[index]),
                          ],
                        ),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            setState(() {
                              listaDeCompras.removeAt(index);
                              isCheckedList.removeAt(index);
                            });
                          },
                        ),
                      );
                    }),
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Campo de entrada de texto para adicionar itens
              TextField(
                controller: itemController,
                decoration: InputDecoration(
                  labelText: 'Novo item para comprar',
                ),
              ),
              SizedBox(height: 10),
              // Botão para adicionar o item à lista
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botão ADD
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listaDeCompras.add(itemController.text);
                        isCheckedList.add(false);
                        itemController.clear(); // Limpa o campo de texto
                      });
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
                    child: const Text('Adicionar',style: TextStyle(color: Colors.black),),
                  ),

                  SizedBox(width: 20),

                  // Botão para limpar a lista                  
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        listaDeCompras.clear();
                        isCheckedList.clear();
                      });
                    },
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Colors.black),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), //cor fundo
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              18.0), 
                        ),
                      ),
                    ),
                    child: const Text('Limpar',style: TextStyle(color: Colors.black),),
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
