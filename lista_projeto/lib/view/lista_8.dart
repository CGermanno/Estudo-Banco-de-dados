
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

//output

import 'package:flutter/material.dart';

class Tela88View extends StatefulWidget {
  const Tela88View({Key? key}) : super(key: key);

  @override
  State<Tela88View> createState() => _Tela88ViewState();
}

class _Tela88ViewState extends State<Tela88View> {
  List<String> listaDeCompras = [];
  final TextEditingController itemController = TextEditingController();
  String nomeDaLista = 'Lista 08';
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
        backgroundColor: Colors.yellow[300],
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
          color: Colors.yellow[300], // Define cor fundo
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
                    child: const Text('Adicionar'),
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
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.white), // Define a cor de fundo como branco
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              18.0), // Define a forma do botão
                        ),
                      ),
                    ),
                    child: const Text('Limpar'),
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
