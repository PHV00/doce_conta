import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Concluded(),
    );
  }
}

class Concluded extends StatefulWidget {
  @override
  _Concluded createState() => _Concluded();
}

class _Concluded extends State<Concluded> {
  Widget _imgverificado = SvgPicture.asset(
    'assets/Images/realizacao.svg',
    fit: BoxFit.contain,
    width: 100,
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFF5A001),
          ),
          Positioned(
            top: 16,
            left: 16,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          Center(
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
                //JUST TO GIVE AN ESPACE TO THE TITLE
                const Text(
                  '',
                  style: TextStyle(
                    fontFamily: 'Open Sans SemiBold',
                    fontSize: 48,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Concluído!',
                  style: TextStyle(
                    fontFamily: 'Open Sans SemiBold',
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 30),
                _imgverificado,
                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
