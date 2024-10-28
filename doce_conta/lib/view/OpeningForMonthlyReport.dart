import 'package:flutter/material.dart';
import '../widgets/appBarWithIcon.dart';
import '../widgets/conteinerTextCenter.dart';

void main(){
  runApp(const AnnualReportPage());
}

class AnnualReportPage extends StatelessWidget {
  const AnnualReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE1FAF4),
        appBar: Appbarwithicon(iconPath: "assets/Images/relatorio.svg"),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Janeiro", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Fevereiro", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Março", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Abril", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Maio", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Junho", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Julho", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Agosto", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Setembro", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Outubro", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Conteinertextcenter(btnText: "Novembro", widhtContainer: 151.54, heightContainer: 81.2),
                  SizedBox(width: 20),
                  Conteinertextcenter(btnText: "Dezembro", widhtContainer: 151.54, heightContainer: 81.2),
                ],
              ),
            ],
          ),
        )
      ),
    );
  }
}