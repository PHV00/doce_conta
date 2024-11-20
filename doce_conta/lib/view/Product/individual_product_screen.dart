import 'package:doce_conta/view/Product/concluded_screen.dart';
import 'package:doce_conta/view/Product/product_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IndividualProduct extends StatefulWidget {
  @override
  _IndividualProductState createState() => _IndividualProductState();
}

class _IndividualProductState extends State<IndividualProduct> {
  int ProductCost = 30;
  int ProductMargin = 20;
  final TextEditingController productName = TextEditingController(text: "Bolo de Chocolate");
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff003326),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ProductSelection())
            );
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
              controller: productName,
              decoration: const InputDecoration(
                labelText: "Nome do produto: ",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                setState(() {
                  ProductCost = int.tryParse(value) ?? ProductCost;
                });
              },
              decoration: InputDecoration(
                labelText: "Custo por unidade: $ProductCost",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value){
                setState(() {
                  ProductMargin = int.tryParse(value) ?? ProductMargin;
                });
              },
              decoration: InputDecoration(
                labelText: "Margem de Lucro: $ProductMargin",
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context)=> Concluded()));
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




