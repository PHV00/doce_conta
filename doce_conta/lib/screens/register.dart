import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import '../widgets/button.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //FAZER OS INPUTS COMO UM WIDGET
              SvgPicture.asset("img/pao.svg"),
              const Column(
                children: [
                  Text("Mei ou Email"),
                  RegisterInput()
                ],
              ),
              const Column(
                children: [
                  Text("Senha"),
                  RegisterInput()
                ],
              ),
              const ButtonWidget(btnText: "Logar"),
              RichText(
                text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                      TextSpan(text: "Não possui uma conta? "),
                      TextSpan(
                        text: "Cadastra-se",
                        style: TextStyle(color: Color(0xFF00A3FF))),
                        //Usar o recognizer para fazer ele ir para outra tela
                    ]
                )
              )
            ],
          )
        )
      )
    );
  }
}