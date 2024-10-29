import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ReportGeneration(),
    );
  }
}

class ReportGeneration extends StatefulWidget {
  const ReportGeneration({super.key});

  @override
  _ReportGeneration createState() => _ReportGeneration();
}

class _ReportGeneration extends State<ReportGeneration> {
  final List<String> icons = [
    'doce_conta/assets/Images/infraestrutura.svg',
    'doce_conta/assets/Images/comunicacao.svg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0FFF7), // Cor de fundo
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Color(0xFF00382B), // Cor da AppBar
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 16.0,
            crossAxisSpacing: 16.0,
            padding: EdgeInsets.all(16.0),
            children: [
              buildGridItem(
                imagePath: 'assets/Images/infraestrutura.svg',
                widgetTitle: 'Caixa mensal',
              ),
              buildGridItem(
                imagePath: 'assets/Images/comunicacao.svg',
                widgetTitle: 'Relatórios',
              ),
            ],
          ),
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
