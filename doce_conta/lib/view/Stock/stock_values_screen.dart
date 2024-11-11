import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doce_conta/view/Stock/dashboard_screen.dart';

class ValueControlScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueControl(),
      theme: ThemeData(
        primaryColor: const Color(0xFF00382B),
      ),
    );
  }
}

class ValueControl extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[50],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF00382B),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {},
                  ),
                  Spacer(),
                  Center(
                    child: SvgPicture.asset(
                      'assets/Images/estoque.svg',
                      color: Colors.orange,
                      height: 80,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                children: [
                  buildItemCard('Bolos', 'R\$350,00', 'assets/Images/bolo.svg'),
                  buildItemCard('Pães', 'R\$100,00', 'assets/Images/pao.svg'),
                  buildItemCard(
                      'Doces', 'R\$80,00', 'assets/Images/brigadeiro.svg'),
                  buildItemCard(
                      'Salgados', 'R\$80,00', 'assets/Images/croissant.svg'),
                  buildItemCard(
                      'Suco Natural', 'R\$80,00', 'assets/Images/drink2.svg'),
                  buildItemCard('Café', 'R\$80,00', 'assets/Images/cafe.svg'),
                ],
              ),
            ),
            SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00382B),
                padding: EdgeInsets.symmetric(vertical: 24, horizontal: 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Graphics())
                );
              },
              child: Text('Caixa',
                  style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemCard(String title, String price, String assetPath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color(0xFF00382B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
          SizedBox(height: 8),
          SvgPicture.asset(
            assetPath,
            color: Colors.orange,
            height: 40,
          ),
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 212, 241, 240),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  color: const Color.fromARGB(255, 191, 228, 215), width: 1.5),
            ),
            child: Text(
              'Valor Bruto\n$price',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color(0xFF00382B),
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}