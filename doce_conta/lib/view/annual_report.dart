import 'package:doce_conta/view/opening_for_monthly_report.dart';
import 'package:flutter/material.dart';
import '../widgets/appBarWithIcon.dart';
import '../widgets/conteiner_text_center.dart';

void main(){
  runApp(const AnnualReportPage());
}

class AnnualReportPage extends StatelessWidget {
  const AnnualReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFFE1FAF4),
        appBar: const Appbarwithicon(iconPath: "assets/Images/relatorio.svg"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(onPressedFunction: (){
                    Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MonthReport()));
                  },btnText: "Mês - 2024", widhtContainer: 151.54, heightContainer: 81.2,),
                  const SizedBox(width: 20),
                  const Conteinertextcenter(btnText: "Ano - 2024", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Mês - 2025", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Ano - 2025", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Mês - 2026", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Ano - 2026", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Mês - 2027", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Ano - 2027", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Mês - 2028", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Ano - 2028", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Mês - 2029", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Ano - 2029", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}