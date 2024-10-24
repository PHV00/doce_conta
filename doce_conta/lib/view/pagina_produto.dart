import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[900],
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            //voltar
          },
        ),
        title: const TextField(
          decoration: InputDecoration(
            hintText: 'Nome do Produto',
            border: InputBorder.none,
            hintStyle: TextStyle(color: Colors.white),
          ),
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Custo por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Margem de lucro do produto:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Lucro por unidade:',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Sucesso'),
                      content: const Text('Registro realizado com sucesso!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green[900], // cor botão
              ),
              child: const Text(
                'ok',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset('Images/produto.svg',
            // ignore: deprecated_member_use
            color: const Color(0xFFF5A001),
            ),
            backgroundColor: const Color(0xFF00382B),
          //  icon: Icon(Icons.widgets_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('Images/loja.svg',
            // ignore: deprecated_member_use
            color: const Color(0xFFF5A001),),
            //icon: Icon(Icons.store),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('Images/estoque.svg',
            // ignore: deprecated_member_use
            color: const Color(0xFFF5A001),),
            //icon: Icon(Icons.calculate_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('Images/relatorio.svg',
            // ignore: deprecated_member_use
            color: const Color(0xFFF5A001),),
            //icon: Icon(Icons.receipt_long_outlined),
            label: '',
          ),
        ],
        selectedItemColor: Colors.green[900],
        unselectedItemColor: Colors.green[600],
        iconSize: 45,
      ),
    );
  }
}

