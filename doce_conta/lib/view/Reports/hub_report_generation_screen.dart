import 'package:doce_conta/view/Reports/annual_report_screen.dart';
import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';

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

  Widget buildGridItem(
      {required String imagePath, required String widgetTitle}) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF00382B), // Fundo dos itens
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ContainerCustomButton(
            btnText: widgetTitle,
            widhtContainer: 140,
            heightContainer: 140,
            svgPath: imagePath,
            widhtSvg: 30,
            heightSvg: 30,
            onPressedFunction: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AnnualReportPage()));
            },
          )
        ],
      ),
    );
  }
}
