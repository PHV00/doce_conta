//Parte visual - Inicio

import 'package:doce_conta/view/Initial/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InitialScreen extends StatelessWidget {
  const InitialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: Scaffold(
          body: Container(
            color: const Color.fromARGB(245, 245, 160, 1),
            child: const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'DOCE',
                    style: TextStyle(
                      fontFamily: 'Open Sans SemiBold',
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'CONTA',
                    style: TextStyle(
                      fontFamily: 'Open Sans SemiBold',
                      fontSize: 48,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    '             ',
                    style: TextStyle(
                      fontFamily: 'Open Sans SemiBold',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Click to Open',
                    style: TextStyle(
                      fontFamily: 'Open Sans SemiBold',
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}