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
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 50),
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


    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_1',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 90, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png11.png'),
        ),
      ),
    ),
    
                        
                        const SizedBox(width:  110),
                        const SizedBox(height: 150),


    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_2',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png22.png'),
        ),
      ),
    ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [



                        
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_3',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png33.png'),
        ),
      ),
    ),

                        const SizedBox(width:  110),
                        const SizedBox(height: 150),
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_4',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png44.png'),
        ),
      ),
    ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_5',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png55.png'),
        ),
      ),
    ),



                        const SizedBox(width:  110),
                        const SizedBox(height: 150),



    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_6',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png66.png'),
        ),
      ),
    ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_7',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png77.png'),
        ),
      ),
    ),



                        const SizedBox(width:  110),
                        const SizedBox(height: 150),



    GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          'lista_8',
        );
      },
      child: ClipRRect(
        child: SizedBox(
          width: 99, // largura 
          height: 90, // altura 
          child: Image.asset('assets/png88.png'),
        ),
      ),
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
