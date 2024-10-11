import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import '../widgets/button.dart';
import '../widgets/other_options.dart';
import '../widgets/api_brands_login.dart';
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
              const SizedBox(height: 50,),
              const Column(
                children: [
                  Text("Mei ou Email"),
                  RegisterInput()
                ],
              ),
              const SizedBox(height: 20,),
              const Column(
                children: [
                  Text("Senha"),
                  RegisterInput()
                ],
              ),
              const SizedBox(height: 50,),
              const ButtonWidget(btnText: "Logar"),
              const SizedBox(height: 10,),
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
              ),
              const SizedBox(height: 50,),
              const OtherOptionsWidget(),
              const SizedBox(height: 40,),
              const ApiBrandsLogin()
            ],
          )
        )
      )
    );
  }
}