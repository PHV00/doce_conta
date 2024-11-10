import 'package:doce_conta/view/Initial/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    return GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const MainScreen()));
        },
        child: Scaffold(
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
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
                    const Text(
                      'Click para Voltar',
                      style: TextStyle(
                        fontFamily: 'Open Sans SemiBold',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }
}
