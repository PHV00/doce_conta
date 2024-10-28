import 'package:doce_conta/view/login_screen.dart';
import 'package:flutter/material.dart';

class SuccessfulRegister extends StatefulWidget {
  const SuccessfulRegister({super.key});

  @override
  _SuccessfulRegister createState() => _SuccessfulRegister();
}

class _SuccessfulRegister extends State<SuccessfulRegister> {
  final List<String> icons = [
    'assets/Images/realizacao.svg',
  ];

  void _apertarBotaoLogin() {
    setState(() {
      // Action
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFFF5A001),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'DOCE',
                style: TextStyle(
                  fontFamily: 'Open Sans SemiBold',
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
              const Text(
                'CONTA',
                style: TextStyle(
                  fontFamily: 'Open Sans SemiBold',
                  fontSize: 48,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 30),
              //where the image was
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: _apertarBotaoLogin,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00382B),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 140, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  textStyle: const TextStyle(
                    fontSize: 24,
                  ),
                ),
                child: const Text('LOGAR'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
