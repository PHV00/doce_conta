import 'package:doce_conta/view/initial/main_screen.dart';
import 'package:doce_conta/view/initial/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../widgets/button.dart';
import '../../widgets/other_options.dart';
import '../../widgets/api_brands_login.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/auth_service.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailInput = TextEditingController();
  final _passwordInput = TextEditingController();
  final authService = AuthService();
  bool successfullLogin = true;

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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/Images/LogoColorida.svg",
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: 350,
              child: TextField(
                controller: _emailInput,
                decoration: InputDecoration(
                  labelText: 'Mei ou Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  )
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: TextField(
                controller: _passwordInput,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: successfullLogin ? Colors.black : Colors.red),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height: 50),
            ButtonWidget( 
              btnText: "Logar",
              onPressedFunction: () async {
                try{
                  final response = await authService.signInWithEmailPassword(_pegarTexto(_emailInput), _pegarTexto(_passwordInput));
                  if(response.session == null){
                      setState(() {
                        successfullLogin = false;
                      });
                      //VER O PORQUE NÃO ESTÁ MUDANDO A CORDO INPUT DA SENHA PARA VERMELHO
                    print("Login doesn't exists");
                  }else{
                    Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MainScreen()
                    )
                    );
                  }
                }catch(error){print('Erro ao fazer login: $error');}
              }
            ),
            const SizedBox(height: 10),
            RichText(
                text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 12),
                    children: [
                  const TextSpan(text: "Não possui uma conta? "),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const RegisterScreen()));
                        },
                      text: "Cadastra-se",
                      style: const TextStyle(color: Color(0xFF00A3FF))),
                ])),
            const SizedBox(height: 50),
            const OtherOptionsWidget(),
            const SizedBox(height: 40),
            const ApiBrandsLogin(),
            const SizedBox(height: 20),
          ],
        ));
  }
}


