import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CostRegistration(),
    );
  }
}

class CostRegistration extends StatefulWidget {
  const CostRegistration({super.key});

  @override
  _CostRegistration createState() => _CostRegistration();
}

class _CostRegistration extends State<CostRegistration> {
  final List<String> icons = [
    'doce_conta/assets/Images/infraestrutura.svg',
    'doce_conta/assets/Images/comunicacao.svg',
    'doce_conta/assets/Images/imposto.svg',
    'doce_conta/assets/Images/folha_pagamento.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0FFF7), // Cor de fundo
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xFF00382B), // Cor da AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 16.0,
              crossAxisSpacing: 16.0,
              padding: EdgeInsets.all(16.0),
              children: [
                buildGridItem(
                  imagePath: 'assets/Images/infraestrutura.svg',
                  widgetTitle: 'Infraestrutura',
                ),
                buildGridItem(
                  imagePath: 'assets/Images/comunicacao.svg',
                  widgetTitle: 'Comunicação',
                ),
                buildGridItem(
                  imagePath: 'assets/Images/imposto.svg',
                  widgetTitle: 'Impostos',
                ),
                buildGridItem(
                  imagePath: 'assets/Images/folha_pagamento.svg',
                  widgetTitle: 'Folha de pagamento',
                ),
              ],
            ),
            SizedBox(height: 20.0),
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xFF00382B),
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildGridItem({required String imagePath, required String widgetTitle}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF00382B), // Fundo dos itens
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 10.0),
          Text(
            widgetTitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            imagePath,
            height: 30,
            width: 30,
          ),
        ],
      ),
    );
  }
}
