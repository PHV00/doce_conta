import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:doce_conta/view/Stock/hub_stock_controll_screen.dart';
import 'package:doce_conta/view/Stock/stock_values_screen.dart';

class StockManagementScreen extends StatefulWidget {
  @override
  _StockManagementScreenState createState() => _StockManagementScreenState();
}

class _StockManagementScreenState extends State<StockManagementScreen> {
  int stockQuantity = 0; // Quantidade inicial em estoque
  TextEditingController stockController = TextEditingController();

  //Função para adicioanr ao estoque 
  void addStock() {
    setState(() {
      double quantity = double.tryParse(stockController.text) ?? 0;
      stockQuantity += quantity.toInt();
      stockController.clear();
    });
  }

  //Função para remover do estoque 
  void removeStock() {
    setState(() {
      if (stockQuantity > 0){
      double quantity = double.tryParse(stockController.text) ?? 0;
      stockQuantity -= quantity.toInt();
      stockController.clear();
      }
    });
  }

  //Função para gerar faturamento - VENDA 
  void sellProdutct(){
    
  }

  @override
  void dispose() {
    stockController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xFF00382B),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const HubStockControll(),
                ),
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InventoryItem(
                          stockQuantity: stockQuantity,
                          addStock: addStock,
                          removeStock: removeStock,
                          stockController: stockController,
                        ),
                        const Divider(color: Colors.orange, thickness: 1),
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
                    textStyle: const TextStyle(color: Colors.white),
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
                    "Fechamento do Estoque",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InventoryItem extends StatelessWidget {
  final int stockQuantity;
  final VoidCallback addStock;
  final VoidCallback removeStock;
  final TextEditingController stockController;

  const InventoryItem({
    required this.stockQuantity,
    required this.addStock,
    required this.removeStock,
    required this.stockController
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Nome do produto e quantidade em estoque
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Bolo de chocolate',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Estoque Atual: $stockQuantity', 
                style: const TextStyle(fontSize: 16, color: Colors.green),
              ),
            ],
          ),
          const SizedBox(height: 10),
          TextField(
            controller: stockController, 
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: "Atualizar estoque",
              border: OutlineInputBorder(),
              isDense: true,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  //Chamando função para adicionar estoque
                  onPressed: addStock, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Adicionar', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  //Chamando função de remover estoque 
                  onPressed: removeStock, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Remover', style: TextStyle(color: Colors.white)),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Chamar função de vender 
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Vender', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}