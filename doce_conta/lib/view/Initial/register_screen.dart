import 'package:doce_conta/view/Initial/login_screen.dart';
import 'package:doce_conta/view/Initial/successful_register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../widgets/input_and_label.dart';
import '../../widgets/button.dart';
import '../../data/auth_service.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final meiController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final authService = AuthService(); 

  // @override
  // void emailDispose() {
  //   _emailControl.dispose();
  //   super.dispose();
  // }

  // void passwordDispose() {
  //   _passwordControl.dispose();
  //   super.dispose();
  // }

  // void confirmPasswordDispose() {
  //   _confirmPasswordControl.dispose();
  //   super.dispose();
  // }

  String _pegarTexto(TextEditingController controlName) {
    String textoDigitado = controlName.text;
    if (textoDigitado.isEmpty) {
      print("\n\nTexto vazio!\n\n");
    } else {
      print("\n\nTexto: $textoDigitado\n\n");
    }
    return textoDigitado;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
          SizedBox(
            width: 350,
            child: TextField(
              controller: meiController,
              decoration: InputDecoration(
                labelText: 'Mei',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          SizedBox(
            width: 350,
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),

          SizedBox(
            width: 350,
            child: TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              obscureText: true,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ButtonWidget(
            btnText: "Cadastrar",
            onPressedFunction: () async{
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => const SuccessfulRegister()
                )
              );
              await authService.signUp(_pegarTexto(emailController), _pegarTexto(passwordController));
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
                            builder: (context) => const LoginScreen()));
                    },
                    text: "Entrar",
                    style: const TextStyle(color: Color(0xFF00A3FF))),
              ])),
        ],
      ),
    ));
  }
}
