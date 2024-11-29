import 'package:doce_conta/view/reports/annual_report_screen.dart';
import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/reports/input_report_screen.dart';

class ReportGeneration extends StatefulWidget {
  const ReportGeneration({super.key});

  final double _widhtContainer = 140;
  final double _heightCOntainer = 140;
  final double _widhtSvg = 55;
  final double _heightSvg = 55;

  @override
  State<ReportGeneration> createState() => _ReportGeneration();
}

class _ReportGeneration extends State<ReportGeneration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        title: const Text(
          "Report Generation",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(  
        child: Padding(  
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Caixa Mensal",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/comunicacao.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg,
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MontlhyReport()));
                      },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min, 
                  children: [
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Relatórios",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/relatorio.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg,
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnnualReportPage()));
                      },
                    ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

