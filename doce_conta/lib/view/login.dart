import 'package:doce_conta/widgets/other_options.dart';
import 'package:flutter/material.dart';
import '../widgets/input_and_label.dart';
import '../widgets/button.dart';

void main(){
  runApp(LoginScreen());
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Cadastre-se",
                style: TextStyle(
                  color: Color(0xFF00382B),
                  fontSize: 30
                ),
              ),
              const SizedBox(height: 20,),
              const InputAndLabelWidget(labelText: "Mei"),
              const SizedBox(height: 20,),
              const InputAndLabelWidget(labelText: "Email"),
              const SizedBox(height: 20,),
              const InputAndLabelWidget(labelText: "Senha"),
              const SizedBox(height: 20,),
              const InputAndLabelWidget(labelText: "Confirmar senha"),
              const SizedBox(height: 20,),
              const ButtonWidget(btnText: "Cadastrar"),
              const SizedBox(height: 20,),
              RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(text: "Já possui uma conta? "),
                      TextSpan(
                        text: "Entrar",
                        style: TextStyle(color: Color(0xFF00A3FF))),
                        //Usar o recognizer para fazer ele ir para outra tela
                    ]
                )
              ),
            ],
          ),
          )
        ), 
      ) 
    );
  }
}