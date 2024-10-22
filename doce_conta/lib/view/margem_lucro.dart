import 'package:flutter/material.dart';
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
          body: Center(
        child: Column(
          children: [
            const Text(
                "Selecione a procentagem de lucro que gostaria de ter em seu produto:"),
            buildColumnProfits(),
          ],
        ),
      )),
    ));
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
      listRow.add(BtnMargemLucro(percentage: "${j * 5}%"));
      listRow.add(const SizedBox(
        width: 50,
      ));
      index++;
    }
    listRow.removeLast(); //Remove last widht box
    listRow.add(const SizedBox(height: 60,)); //Add space box height
    listColumn.add(Row(children: listRow));

    listRow = [];
    index = 0;
  }
  return Column(
    children: listColumn,
  );
}
