//ignore_for_file: prefer_const_constructors

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
        title: Text('Olá, ${nome ?? ''}'),
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300], // Define o fundo como Cinza claro
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Lista de Compras
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_1',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 150),
                        const SizedBox(height: 150),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_2',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'sobre',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 150),
                        const SizedBox(height: 150),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_3',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'sobre',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 150),
                        const SizedBox(height: 150),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_4',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_5',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                        const SizedBox(width: 150),
                        const SizedBox(height: 150),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'lista_6',
                            );
                          },
                          icon: Icon(Icons.info),
                          iconSize: 40,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
