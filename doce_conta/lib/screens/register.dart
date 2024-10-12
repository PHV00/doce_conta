import 'package:flutter/material.dart';
import '../widgets/text_field.dart';
import '../widgets/button.dart';
import '../widgets/other_options.dart';
import '../widgets/api_brands_login.dart';
import '../widgets/input_and_label.dart';
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
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset("img/doce_conta_logo.svg", width: 50, height: 50,),
              const SizedBox(height: 50,),

              const InputAndLabelWidget(labelText: "Mei ou Email",),
              const SizedBox(height: 20,),

              const InputAndLabelWidget(labelText: "Senha"),
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
      );
  }
}