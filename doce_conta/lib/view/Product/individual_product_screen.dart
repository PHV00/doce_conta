import 'package:doce_conta/view/Product/concluded_screen.dart';
import 'package:doce_conta/view/Product/product_selection_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/date_storage.dart';
import '../../data/date_storage.dart';

class IndividualProduct extends StatefulWidget {
  const IndividualProduct({super.key});

  @override
  _IndividualProductState createState() => _IndividualProductState();
}

class _IndividualProductState extends State<IndividualProduct> {
  final TextEditingController productName = TextEditingController(text: "Bolo de Chocolate");

  @override
  Widget build(BuildContext context) {
    
    DataStorage dataStorage = DataStorage();
    final getCust = dataStorage.ProductCost;

    if(getCust == 0){
      // Future<double> 
      //FAZER LÓGICA DE INSERT NO BANCO E VERIFICAR SE ESTÁ CERTO ESSE IF
    }

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
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
                  dataStorage.ProductCost = int.tryParse(value) ?? dataStorage.ProductCost;
                });
              },
              decoration: InputDecoration(
                labelText: "Custo por unidade: ${dataStorage.ProductCost}", //Resgatar com select esse dado
                border: const OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              onChanged: (value){
                setState(() {
                  dataStorage.ProductMargin = double.tryParse(value) ?? dataStorage.ProductMargin;
                });
              },
              decoration: InputDecoration(
                labelText: "Margem de Lucro: ${dataStorage.ProductMargin}",
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




