import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/appBarWithIcon.dart';
import '../widgets/conteiner_text_center.dart';
class MonthReport extends StatelessWidget {
  const MonthReport({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFE1FAF4),
        appBar: AppBar(
          leading:IconButton(
            icon:const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: (){
              Navigator.pop(context);
            }),
          centerTitle: true,
          title: SvgPicture.asset(
              "assets/Images/relatorio.svg",
              height: 40,
              color: const Color(0xFFF5A001),
            ),
          backgroundColor: const Color(0xFF00382B),
        ),
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