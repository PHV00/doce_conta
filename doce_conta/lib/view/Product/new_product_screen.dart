import 'package:doce_conta/view/Product/concluded_screen.dart';
import 'package:doce_conta/view/Product/icon_selection_screen.dart';
import 'package:doce_conta/view/Product/product_selection_screen.dart';
import 'package:doce_conta/view/Product/profit_margin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.idCategory});

  final int idCategory;

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final TextEditingController productNameController = TextEditingController();
  final TextEditingController unitCustController = TextEditingController();
  final TextEditingController unitProfitController = TextEditingController();

  String newName = "";
  double newUnitCost = 0;
  double newProfitMargin = 0;

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
            Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductSelectionScreen(category: widget.idCategory,)));
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
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;
                  newName = value;
                });
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            TextField(
              controller: unitCustController,
              decoration: const InputDecoration(
                labelText: 'Custo por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;
                  newUnitCost = double.tryParse(value)!;
                });
              },
            ),
            // Padding(padding: EdgeInsets.only(bottom: 20)),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.push(
            //           context,
            //           MaterialPageRoute(
            //               builder: (context) => const ProfitMarginScreen()));
            //     },
            //     style: ElevatedButton.styleFrom(
            //       backgroundColor: const Color(0xff003326),
            //     ),
            //     child: const Row(children: [
            //       Icon(Icons.arrow_forward, color: Colors.white),
            //       SizedBox(
            //         width: 15,
            //       ),
            //       Center(
            //         child: Text('Selecione a margem de lucro',
            //             style: TextStyle(color: Color(0xffccf2e6))),
            //       ),
            //     ])),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            TextField(
              controller: unitProfitController,
              decoration: const InputDecoration(
                labelText: 'Lucro por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;
                  newProfitMargin = double.tryParse(value)!;
                });
              },
            ),
            const Padding(padding: EdgeInsets.only(bottom: 20)),
            ElevatedButton(
              onPressed: () async {
                await Supabase.instance.client.from("produto").insert([
                  {
                    'nome_produto': newName,
                    'custo_produto': newUnitCost,
                    'margem_lucro': newProfitMargin,
                    'lucro_produto': newUnitCost * (newProfitMargin / 100),
                    'id_categoria': widget.idCategory,
                  }
                ]);

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
