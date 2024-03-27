// ignore_for_file: prefer_const_constructors
 
import 'package:flutter/material.dart';
 
class LoginView extends StatefulWidget {
  const LoginView({super.key});
 
  @override
  State<LoginView> createState() => _LoginViewState();
}
/// tetse
class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        centerTitle: true,
      ),
 
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
 
            OutlinedButton(
              onPressed: () {
                //
                // botao logar
                //
              },
              child: Text('Logar'),
 
            ),
            OutlinedButton(
              onPressed: () {
                //
                // botao voltar
                //
              },
              child: Text('Voltar'),
 
 
            ),
          ],
        ),
      ),
    );
  }
}