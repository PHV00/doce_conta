import 'package:doce_conta/view/icon_selection_screen.dart';
import 'package:doce_conta/widgets/bootom_navigation_bar_default.dart';
import 'package:doce_conta/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              onPressed: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IconSelectionScreen()));
              },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff003326),
                ),
              child:Row(
                  children: [
                    Center(
                      child:Text('Selecione Icone',style: TextStyle(color: Color(0xffccf2e6))),
                    ),
                    SizedBox(width: 185),
                    Icon(Icons.arrow_forward, color: Colors.white)
                  ]
                ) 
                
              ),
            SizedBox(height: 30),
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
                backgroundColor: Color(0xff003326), // cor botão
              ),
              child: const Text(
                'Cadastrar',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

