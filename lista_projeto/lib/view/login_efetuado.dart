
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables



import 'package:flutter/material.dart';

class Tela3View extends StatefulWidget {
  const Tela3View({Key? key}) : super(key: key);

  @override
  State<Tela3View> createState() => _Tela3ViewState();
}

class _Tela3ViewState extends State<Tela3View> {
  List<String> listaDeCompras = [];
  final TextEditingController itemController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final nome = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${nome ?? ''}!'),
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


              // Lista de Compras
              Expanded(
                child: ListView.builder(
                  itemCount: listaDeCompras.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(listaDeCompras[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),       //Deletar da lista
                        onPressed: () {
                          setState(() {
                            listaDeCompras.removeAt(index);
                          });
                        },
                      ),
                    );
                  },
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

              // Botão para adicionar o item
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    listaDeCompras.add(itemController.text);
                    itemController.clear(); // Limpa o campo de texto
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: Text(
                  'Adicionar Item',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),


              SizedBox(height: 20),


              // Botão para limpar a lista
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    listaDeCompras.clear();
                  });
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                ),
                child: Text(
                  'Limpar Lista',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
