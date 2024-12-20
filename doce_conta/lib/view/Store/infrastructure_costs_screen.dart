import 'package:doce_conta/view/Store/cost_item_addition_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfraestructureCost extends StatelessWidget {
  const InfraestructureCost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: SvgPicture.asset(
          'assets/images/infraestrutura.svg',
          height: 40,
          color: const Color(0xFFF5A001),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Lista de produtos
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(16.0),
              itemCount: 4,
              itemBuilder: (context, index) {
                // Lista de produtos
                final serviceNames = ['Aluguel', 'Luz', 'Água', 'Segurança'];
                final servicePrice = ['R\$ 1400', 'R\$ 350', 'R\$ 180', 'R\$ 380'];
                return _buildServiceItem(serviceNames[index], servicePrice[index]);
              },
              separatorBuilder: (context, index) => const Divider(
                color: Colors.amber, // Linha amarela entre os itens
                thickness: 1,
                height: 16, // Ajusta o espaçamento da linha entre os itens
              ),
            ),
          ),
          // Botão de adicionar
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: FloatingActionButton(
              onPressed: () {
                // Adicionar novo produto
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CostItemAddition()));
              },
              backgroundColor: Colors.white,
              child: const Icon(Icons.add, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildServiceItem(String serviceName, String servicePrice) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            serviceName,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            servicePrice,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ]
      ),
    );
  }
}
