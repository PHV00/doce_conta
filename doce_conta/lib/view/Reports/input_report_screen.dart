import 'package:doce_conta/view/Reports/report_descriptions_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MontlhyReport extends StatelessWidget {
  const MontlhyReport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF00382B),
        title: SvgPicture.asset(
          'assets/images/relatorio.svg',
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
              itemCount: 5,
              itemBuilder: (context, index) {
                // Lista de produtos
                final infoName = ['Quantidade de itens vendidos', 'Valor bruto: caixa', 'Lucro diário', 'Valor Contas', 'Reserva'];
                final infoPrice = ['x', 'R\$', 'R\$', 'R\$', 'R\$'];
                return _buildInfoItem(infoName[index], infoPrice[index]);
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
            child: ElevatedButton(
              onPressed: () {
                //Linkar página de descrições
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ReportDescriptions()));
              },
              child: 
              const Text(
                "Descrições",
                style: TextStyle(color: Colors.black),
              )
            ),
          ),
        ],
      ),
    );
  }

 Widget _buildInfoItem(String infoName, String infoPrice) {
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
            infoName,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
          Text(
            infoPrice,
            style: const TextStyle(fontSize: 16, color: Colors.black),
          ),
        ]
      ),
    );
  }
}
