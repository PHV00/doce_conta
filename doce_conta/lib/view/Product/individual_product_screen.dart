import 'package:doce_conta/view/Product/concluded_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../data/date_storage.dart';

class IndividualProduct extends StatefulWidget {
  const IndividualProduct(
      {super.key,
      required this.id,
      required this.name,
      required this.unitCost,
      required this.profitMargin});

  final int id;
  final String name;
  final double unitCost;
  final double profitMargin;

  @override
  _IndividualProductState createState() => _IndividualProductState();
}

class _IndividualProductState extends State<IndividualProduct> {
  // final TextEditingController productName =
  //     TextEditingController(text: "Bolo de Chocolate");

  double newUnitCost = 0;
  double newProfitMargin = 0;

  late TextEditingController controllerName;
  late TextEditingController controllerUnitCost;
  late TextEditingController controllerProfitMargin;

  String newName = '';

  @override
  void initState() {
    super.initState();

    controllerName = TextEditingController(text: widget.name);
    controllerUnitCost =
        TextEditingController(text: widget.unitCost.toString());
    controllerProfitMargin =
        TextEditingController(text: widget.profitMargin.toString());

    newName = widget.name;
    newUnitCost = widget.unitCost;
    newProfitMargin = widget.profitMargin;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
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
              controller: controllerName,
              decoration: const InputDecoration(
                labelText: "Nome do produto: ",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;
                  newName = value;
                });
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controllerUnitCost,
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;
                  newUnitCost = double.tryParse(value)!;
                });
              },
              decoration: InputDecoration(
                labelText: "Custo por unidade: $newUnitCost",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: controllerProfitMargin,
              onChanged: (value) {
                setState(() {
                  // widget.newProfitMargin = widget.profitwMargin;

                  newProfitMargin = double.tryParse(value)!;
                });
              },
              decoration: InputDecoration(
                labelText: "Margem de Lucro: ${widget.profitMargin}",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await Supabase.instance.client.from('produto').update({
                      'nome_produto': newName,
                      'custo_produto': newUnitCost,
                      'margem_lucro': newProfitMargin
                    }).eq('id', widget.id);

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Concluded()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF003326),
                  ),
                  child: const Text(
                    "Salvar Alterações",
                    style: TextStyle(color: Colors.white),
                  ),
                ),

                ElevatedButton(
                  onPressed: () async {
                    await Supabase.instance.client.from('produto').delete().eq('id', widget.id);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Concluded()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF003326),
                  ),
                  child: const Text(
                    "Deletar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
