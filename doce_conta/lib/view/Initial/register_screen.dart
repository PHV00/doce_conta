import 'package:doce_conta/view/Initial/login_screen.dart';
import 'package:doce_conta/view/Initial/successful_register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../widgets/input_and_label.dart';
import '../../widgets/button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Cadastre-se",
            style: TextStyle(color: Color(0xFF00382B), fontSize: 30),
          ),
          const SizedBox(
            height: 20,
          ),
          const InputAndLabelWidget(labelText: "Mei"),
          const SizedBox(
            height: 20,
          ),
          const InputAndLabelWidget(labelText: "Email"),
          const SizedBox(
            height: 20,
          ),
          const InputAndLabelWidget(labelText: "Senha"),
          const SizedBox(
            height: 20,
          ),
          const InputAndLabelWidget(labelText: "Confirmar senha"),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            btnText: "Cadastrar",
            onPressedFunction: (){
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => SuccessfulRegister()));
            },
          ),
          const SizedBox(
            height: 20,
          ),
          RichText(
              text: TextSpan(
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                  children: [
                const TextSpan(text: "Já possui uma conta? "),
                TextSpan(
                    recognizer: TapGestureRecognizer()..onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()));
                    },
                    text: "Entrar",
                    style: const TextStyle(color: Color(0xFF00A3FF))),
              ])),
        ],
      ),
    ));
  }
}
