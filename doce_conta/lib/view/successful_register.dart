import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ContaRegistrada(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ContaRegistrada extends StatefulWidget {
  const ContaRegistrada({super.key});

  @override
  _ContaRegistrada createState() => _ContaRegistrada();
}

class _ContaRegistrada extends State<ContaRegistrada> {
  final List<String> icons = [
    'assets/Images/realizacao.svg',
  ];

  void _apertarBotaoLogin() {
    setState(() {
      // Action
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
