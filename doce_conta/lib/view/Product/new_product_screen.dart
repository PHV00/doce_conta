import 'package:doce_conta/view/Product/concluded_screen.dart';
import 'package:doce_conta/view/Product/icon_selection_screen.dart';
import 'package:doce_conta/view/Product/profit_margin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  final TextEditingController productNameController = TextEditingController();
  final TextEditingController unitCustController = TextEditingController();
  final TextEditingController unitProfitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            //voltar
            Navigator.pop(context);
          },
        ),
        title: SvgPicture.asset(
          'assets/images/bolo.svg',
          height: 40,
          color: const Color(0xFFF5A001),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: productNameController,
              decoration: const InputDecoration(
                labelText: 'Nome do produto:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: unitCustController,
              decoration: const InputDecoration(
                labelText: 'Custo por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfitMarginScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff003326),
                ),
                child: const Row(children: [
                  Icon(Icons.arrow_forward, color: Colors.white),
                  SizedBox(width: 15,),
                  Center(
                    child: Text('Selecione a margem de lucro',
                        style: TextStyle(color: Color(0xffccf2e6))),
                  ),
                ])),
            const SizedBox(height: 16),
            TextField(
              controller: unitProfitController,
              decoration: const InputDecoration(
                labelText: 'Lucro por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => IconSelectionScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff003326),
                ),
                child: const Row(children: [
                  Icon(Icons.arrow_forward, color: Colors.white),
                  SizedBox(width: 15,),
                  Center(
                    child: Text('Selecione Icone',
                        style: TextStyle(color: Color(0xffccf2e6))),
                  ),
                ])),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // showDialog(
                //   context: context,
                //   builder: (BuildContext context) {
                //     return AlertDialog(
                //       title: const Text('Sucesso'),
                //       content: const Text('Registro realizado com sucesso!'),
                //       actions: [
                //         TextButton(
                //           onPressed: () {
                //             Navigator.of(context).pop();
                //           },
                //           child: const Text('OK'),
                //         ),
                //       ],
                //     );
                //   },
                // // );
              
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Concluded()));
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff003326), // cor botão
              ),
              child: const Text(
                'Cadastrar',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
