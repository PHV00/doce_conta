import 'package:doce_conta/view/Product/custom_profit_margin_screen.dart';
import 'package:doce_conta/widgets/button.dart';
import 'package:flutter/material.dart';
import '../../widgets/button_profit_margin.dart';

class ProfitMarginScreen extends StatelessWidget {
  const ProfitMarginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Salvando os valores dos lucros em uma lista
    List<int> textButtons = List.generate(24, (index) => (index + 1) * 5);

    List<ButtonProfitMargin> listButtons = List.generate(
        24,
        (index) => ButtonProfitMargin(
              percentage: "${textButtons[index]}%",
              color: const Color(0xFF6FC3AF),
              // onPressedFunction: () =>
                  // {debugPrint("Valor do botão: ${textButtons[index]}")},
            ));

    return MaterialApp(
      home: SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
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
                const Text(
                    "Selecione a procentagem de lucro que gostaria de ter em seu produto:"),
                Row(
                  children:[ buildColumnProfits(context, listButtons) ],
                ),
                const Text(
                    "Os Valores de 40% e de 75% são porcentagens recomendadas para o seu negócio!"),
                ButtonWidget(
                  btnText: "Ok",
                  onPressedFunction: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// Column buildColumnProfits(context) {
//   List<Widget> listRow = [];
//   List<Widget> listColumn = [];
//   var j = 0;
//   int index = 0;

//   for (var i = 0; i < 8; i++) {
//     while (index < 3) {
//       j++;
//       listRow.add(j == 8 || j == 15
//           ? ButtonProfitMargin(
//               percentage: "${j * 5}%",
//               color: const Color(
//                 0xFF6FC3AF,
//               ),
//             )
//           : ButtonProfitMargin(
//               percentage: "${j * 5}%",
//               color: const Color(
//                 0xFFC1BFBF,
//               )));
//       listRow.add(const SizedBox(width: 50));
//       index++;
//     }
//     listRow.removeLast(); //Remove last widht box
//     listRow.add(const SizedBox(
//       height: 60,
//     )); //Add space box height
//     listColumn.add(Row(children: listRow));

//     listRow.removeLast();

//     listRow = [];
//     index = 0;
//   }
//   listColumn.add(ButtonProfitMargin(
//       percentage: "+",
//       color: const Color(0xFFC1BFBF),
//       onPressedFunction: () {
//         Navigator.push(context,
//             MaterialPageRoute(builder: (context) => const CustomMarginProfit()));
//       }));
//   return Column(
//     children: listColumn,
//   );
// }

Column buildColumnProfits(context, List<ButtonProfitMargin> buttonList) {
  List<Widget> listRow = [];
  List<Widget> listColumn = [];
  var j = 0;
  int index = 0;

  // TENTAR FAZER COM QUE CONSIGA CLICAR E PEGAR O TEXTO DO BOTÃO
  // VERIFICAR NO CHAT SOBRE O LISTER.GENERATE E O INDEX DESSA LISTA

  for (var i = 0; i < 8; i++) {
    while (index < 3) {
      listRow.add(buttonList[j]);
      listRow.add(const Padding(padding: EdgeInsets.only(left: 25)));
      listRow.add(const Padding(padding: EdgeInsets.only(bottom: 50)));
      index++;
      j++;
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
  return Column(
    children: listColumn,
  );
}
