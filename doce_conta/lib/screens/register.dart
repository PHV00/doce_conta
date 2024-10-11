import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import '../widgets/button.dart';

void main(){
  runApp(const RegisterScreen());
}

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: [
              //FAZER OS INPUTS COMO UM WIDGET
              Text("Doce"),
              Text("Conta", style: TextStyle(color: Colors.green)),
              Column(
                children: [
                  Text("Mei ou Email"),
                  RegisterInput()
                ],
              ),
              Column(
                children: [
                  Text("Senha"),
                  RegisterInput()
                ],
              )
            ],
          )
        )
      )
    );
  }
}