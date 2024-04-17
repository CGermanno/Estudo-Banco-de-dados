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
  int atalhoAtual = 1;

//bool para status da lista
  bool atalho1Visivel = true;
  bool atalho2Visivel = true;
  bool atalho3Visivel = true;
  bool atalho4Visivel = true;
  bool atalho5Visivel = true;
  bool atalho6Visivel = true;
  bool atalho7Visivel = true;
  bool atalho8Visivel = true;

//funcao para reativar listas
  void resetarListas() {
    setState(() {
      atalho1Visivel = true;
      atalho2Visivel = true;
      atalho3Visivel = true;
      atalho4Visivel = true;
      atalho5Visivel = true;
      atalho6Visivel = true;
      atalho7Visivel = true;
      atalho8Visivel = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final nome = ModalRoute.of(context)!.settings.arguments;
    final nome2 = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('Olá, ${nome != null ? nome : 'nome2'}'),
        backgroundColor: Colors.grey[300],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
          child: Stack(
            children: [
              Center(
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
                            if (atalhoAtual >= 1 && atalho1Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll(['lista_${1}']);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_1',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png11.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho1Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 100),
                            if (atalhoAtual >= 2 && atalho2Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras
                                      .addAll(['lista_${1}', 'lista_${2}']);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_2',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png22.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho2Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (atalhoAtual >= 3 && atalho3Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_3',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png33.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho3Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 100),
                            if (atalhoAtual >= 4 && atalho4Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}',
                                    'lista_${4}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_4',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png44.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho4Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (atalhoAtual >= 5 && atalho5Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}',
                                    'lista_${4}',
                                    'lista_${5}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_5',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png55.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho5Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 100),
                            if (atalhoAtual >= 6 && atalho6Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}',
                                    'lista_${4}',
                                    'lista_${5}',
                                    'lista_${6}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_6',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png66.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho6Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                        SizedBox(height: 80),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            if (atalhoAtual >= 7 && atalho7Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}',
                                    'lista_${4}',
                                    'lista_${5}',
                                    'lista_${6}',
                                    'lista_${7}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_7',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png77.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho7Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            SizedBox(width: 100),
                            if (atalhoAtual >= 8 && atalho8Visivel)
                              GestureDetector(
                                onTap: () {
                                  listaDeCompras.addAll([
                                    'lista_${1}',
                                    'lista_${2}',
                                    'lista_${3}',
                                    'lista_${4}',
                                    'lista_${5}',
                                    'lista_${6}',
                                    'lista_${7}',
                                    'lista_${8}'
                                  ]);
                                  Navigator.pushNamed(
                                    context,
                                    'lista_8',
                                  );
                                },
                                child: Stack(
                                  children: [
                                    ClipRRect(
                                      child: SizedBox(
                                        width: 90,
                                        height: 90,
                                        child: Image.asset('assets/png88.png'),
                                      ),
                                    ),
                                    Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: Icon(Icons.close),
                                        onPressed: () {
                                          setState(() {
                                            atalho8Visivel = false;
                                          });
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (atalhoAtual < 8) {
                              atalhoAtual = (atalhoAtual + 1) % 9;
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Limite de listas gratuitas atingido...',
                                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                              );
                            }
                          });
                        },
                        child: Text(
                          '+Lista',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: resetarListas,
                        child: Text(
                          'Resgatar Lista',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
