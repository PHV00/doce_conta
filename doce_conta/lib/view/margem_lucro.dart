import 'package:flutter/material.dart';
import '../widgets/btn_margem_lucro.dart';

void main(){
  runApp(MargemLucroScreen());
}

class MargemLucroScreen extends StatelessWidget {
  const MargemLucroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: 
        Scaffold(
          body: Center(
            child: Column(
            children: [
              const Text("Selecione a procentagem de lucro que gostaria de ter em seu produto:"),
              for(int i=0; i<8; i++){
                Row(
                  children: [
                    BtnMargemLucro(percentage: "5%",),
                    BtnMargemLucro(percentage: "10%",),
                    BtnMargemLucro(percentage: "50%",),
                  ],
                ),
              }
            ],
          ),
          )
        ),
      )
    );
  }
}