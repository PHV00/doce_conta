import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StockManagementScreen extends StatefulWidget {
  @override
  _StockManagementScreenState createState() => _StockManagementScreenState();
}

class _StockManagementScreenState extends State<StockManagementScreen> {
  int stockQuantity = 10; // Quantidade inicial em estoque

  void addStock() {
    setState(() {
      stockQuantity++;
    });
  }

  void removeStock() {
    setState(() {
      if (stockQuantity > 0) stockQuantity--;
    });
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
              // Voltar para a tela anterior, ajustado conforme seu fluxo de navegação
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
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              // Cabeçalho
              SizedBox(height: 20),
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
                        ),
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
                    // Navegar para o controle do estoque
                    // Adicione sua navegação para a próxima tela, se necessário
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
      ),
    );
  }
}

class InventoryItem extends StatefulWidget {
  final int stockQuantity;
  final VoidCallback addStock;
  final VoidCallback removeStock;

  const InventoryItem({
    required this.stockQuantity,
    required this.addStock,
    required this.removeStock,
  });

  @override
  _InventoryItemState createState() => _InventoryItemState();
}

class _InventoryItemState extends State<InventoryItem> {
  // Definição do controlador de texto
  TextEditingController stockController = TextEditingController();

  @override
  void dispose() {
    stockController.dispose(); // Libera o controlador quando o widget for removido
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
          // Nome do produto e quantidade em estoque
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bolo de chocolate',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              Text(
                'Estoque Atual: ${widget.stockQuantity}', // Corrigido para widget.stockQuantity
                style: TextStyle(fontSize: 16, color: Colors.green),
              ),
            ],
          ),
          SizedBox(height: 10),
          TextField(
            controller: stockController, // Usando o controlador de texto
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Atualizar estoque",
              border: OutlineInputBorder(),
              isDense: true,
            ),
          ),
          SizedBox(height: 10),
          // Botões de controle de estoque
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.addStock, // Corrigido para chamar a função de addStock
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Adicionar', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.removeStock, // Corrigido para chamar a função de removeStock
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Remover', style: TextStyle(color: Colors.white)),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Ação de vender item (implementação futura)
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF00382B),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text('Vender', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}