import 'package:doce_conta/view/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../widgets/button.dart';
import '../widgets/other_options.dart';
import '../widgets/api_brands_login.dart';
import '../widgets/input_and_label.dart';
import 'package:flutter_svg/flutter_svg.dart';

// void main(){
//   runApp(const MaterialApp(home: LoginScreen()));
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            text: TextSpan(
                style: const TextStyle(color: Colors.black, fontSize: 12),
                children: [
                  const TextSpan(text: "Não possui uma conta? "),
                  TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const RegisterScreen())
                      );
                    },
                    text: "Cadastra-se",
                    style: const TextStyle(color: Color(0xFF00A3FF))),
                ]
            )
          ),
          const SizedBox(height: 50,),
          const OtherOptionsWidget(),
          const SizedBox(height: 40,),
          const ApiBrandsLogin()
        ],
      )
    );
  }
}