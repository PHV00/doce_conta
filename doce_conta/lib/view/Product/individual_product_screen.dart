import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/date_storage.dart';

class IndividualProduct extends StatefulWidget {
  IndividualProduct(
      {super.key,
      required this.id,
      required this.nome,
      required this.unitCost,
      required this.profitMargin});

  final int id;
  final String nome;
  final double unitCost;
  final double profitMargin;

  double newUnitCost = 0;
  double newProfitMargin = 0;

  @override
  _IndividualProductState createState() => _IndividualProductState();
}

class _IndividualProductState extends State<IndividualProduct> {
  // final TextEditingController productName =
  //     TextEditingController(text: "Bolo de Chocolate");

  @override
  Widget build(BuildContext context) {
    DataStorage dataStorage = DataStorage();
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
              controller: TextEditingController(text: widget.nome),
              decoration: const InputDecoration(
                labelText: "Nome do produto: ",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller:
                  TextEditingController(text: widget.unitCost.toString()),
              onChanged: (value) {
                setState(() {
                  // dataStorage.ProductCost =
                  //     int.tryParse(value) ?? dataStorage.ProductCost;

                  print("!!!!!!!!!!!!!!!");
                  print(value);
                  widget.newUnitCost = double.tryParse(value)!;
                });
              },
              decoration: InputDecoration(
                labelText: "Custo por unidade: ${widget.unitCost}",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller:
                  TextEditingController(text: widget.profitMargin.toString()),
              onChanged: (value) {
                setState(() {
                  // widget.newProfitMargin = widget.profitMargin;

                  widget.newProfitMargin = double.tryParse(value)!;
                });
              },
              decoration: InputDecoration(
                labelText: "Margem de Lucro: ${widget.profitMargin}",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                print(widget.newProfitMargin);
                print(widget.newUnitCost);

                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => const Concluded()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF003326),
              ),
              child: const Text(
                "Concluído",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
