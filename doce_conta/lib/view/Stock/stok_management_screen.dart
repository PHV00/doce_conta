import 'package:doce_conta/view/Stock/hub_stock_controll_screen.dart';
import 'package:flutter/material.dart';
import 'package:doce_conta/view/Stock/stock_values_screen.dart';

class StockManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ValueControl(),
      theme: ThemeData(
        primaryColor: Colors.white,
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
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Cabeçalho com o ícone de estoque
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.teal[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HubStockControll(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Expanded(
              child: ListView.builder(
                itemCount: 1, // Número de itens que aparecem no app 
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      InventoryItem(),
                      Divider(color: Colors.orange, thickness: 1),
                    ],
                  );
                },
              ),
            ),

            // Botão de Fechamento de Estoque
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF00382B), 
                  textStyle: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ValueControlScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Controle do Estoque",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget para representar um item do estoque
class InventoryItem extends StatefulWidget {
  @override
  _InventoryItemState createState() => _InventoryItemState();
}

class _InventoryItemState extends State<InventoryItem> {
  final TextEditingController stockController = TextEditingController(text: ''); 

  @override
  void dispose() {
    // Libera o controlador quando o widget for removido
    stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Bolo de chocolate',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextField(
                  controller: stockController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    labelText: "Em estoque",
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              SizedBox(width: 10),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Ação de adicionar item
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    child: Text('Adicionar', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Ação de remover item
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                    ),
                    child: Text('Remover', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Ação de vender item
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 10),
            ),
            child: Text('Vender', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}

