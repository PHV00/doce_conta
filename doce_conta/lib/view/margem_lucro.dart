import 'package:doce_conta/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/btn_margem_lucro.dart';

void main() {
  runApp(const MargemLucroScreen());
}

class MargemLucroScreen extends StatelessWidget {
  const MargemLucroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back, color: Colors.white),
          centerTitle: true,
          title: const Text(
            "Margem de Lucro por produto",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          backgroundColor: const Color(0xFF00382B),
        ),
          backgroundColor: const Color(0xFFFFFFFF),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 310,
                    child: Text(
                        "Selecione a procentagem de lucro que gostaria de ter em seu produto:"
                      )
                    ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    width: 310,
                    child: buildColumnProfits(),
                  ),
                  const SizedBox(height: 10,),
                  const SizedBox(
                    width: 310,
                    child: Text(
                      "Os Valores de 40% e de 75% são porcentagens recomendadas para o seu negócio!"),
                  ),
                  const SizedBox(height: 10,),
                  const ButtonWidget(btnText: "Ok"),
                ],
              ),
            ), 
          ),
          bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('Images/produto.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001),
              ),
              backgroundColor: const Color(0xFF00382B),
            //  icon: Icon(Icons.widgets_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('Images/loja.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001),),
              //icon: Icon(Icons.store),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('Images/estoque.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001),),
              //icon: Icon(Icons.calculate_outlined),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('Images/relatorio.svg',
              // ignore: deprecated_member_use
              color: const Color(0xFFF5A001),),
              //icon: Icon(Icons.receipt_long_outlined),
              label: '',
            ),
          ],
        ),
      )
    )
    );
  }
}

Column buildColumnProfits() {
  List<Widget> listRow = [];
  List<Widget> listColumn = [];
  var j = 0;
  int index = 0;

  for (var i = 0; i < 8; i++) {
    while (index < 3) {
      j++;
      listRow.add(j == 8 || j == 15
          ? BtnMargemLucro(
              percentage: "${j * 5}%",
              color: const Color(
                0xFF6FC3AF,
              )
            )
          : BtnMargemLucro(
              percentage: "${j * 5}%",
              color: const Color(
                0xFFC1BFBF,
              )
            ));
      listRow.add(const SizedBox(width: 50));
      index++;
    }
    listRow.removeLast(); //Remove last widht box
    listRow.add(const SizedBox(
      height: 60,
    )); //Add space box height
    listColumn.add(Row(children: listRow));
    
    listRow.removeLast();

    listRow = [];
    index = 0;
  }
  listColumn.add(const BtnMargemLucro(percentage: "+", color: Color(0xFFC1BFBF)));
  return Column(
    children: listColumn,
  );
}
