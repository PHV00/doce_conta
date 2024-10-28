import 'package:doce_conta/view/product_screen.dart';
import 'package:doce_conta/view/product_selection_screen.dart';
import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';

class HubStore extends StatefulWidget {
  const HubStore({super.key});

  final double _widhtContainer = 140;
  final double _heightCOntainer = 140;
  final double _widhtSvg = 55;
  final double _heightSvg = 55;

  @override
  State<HubStore> createState() => _HubStore();
}

class _HubStore extends State<HubStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff003326),
          title: Text(
            "Oque deseja Precificar?",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 70),
          margin: EdgeInsets.symmetric(horizontal: 40),
          alignment: Alignment.center,
          child: Row(
            children: [
              Column(
                children: [
                  ContainerCustomButton(
                    btnText: "Intraestrutura",
                    widhtContainer: widget._widhtContainer,
                    heightContainer: widget._heightCOntainer,
                    svgPath: "assets/Images/infraestrutura.svg",
                    widhtSvg: widget._widhtSvg,
                    heightSvg: widget._heightSvg,
                    onPressedFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductSelection()));
                    },
                  ),
                  ContainerCustomButton(
                      btnText: "Comunicação",
                      widhtContainer: widget._widhtContainer,
                      heightContainer: widget._heightCOntainer,
                      svgPath: "assets/Images/comunicacao.svg",
                      widhtSvg: widget._widhtSvg,
                      heightSvg: widget._heightSvg),
                  /*ContainerCustomButton(
                      btnText: "Impostos",
                      widhtContainer: widget._widhtContainer,
                      heightContainer: widget._heightCOntainer,
                      svgPath: "assets/Images/imposto.svg",
                      widhtSvg: widget._widhtSvg,
                      heightSvg: widget._heightSvg),*/
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(children: [
                ContainerCustomButton(
                    btnText: "Folha de Pagamento",
                    widhtContainer: widget._widhtContainer,
                    heightContainer: widget._heightCOntainer,
                    svgPath: "assets/Images/folha_pagamento.svg",
                    widhtSvg: widget._widhtSvg,
                    heightSvg: widget._heightSvg),
                ContainerCustomButton(
                    btnText: "impostos",
                    widhtContainer: widget._widhtContainer,
                    heightContainer: widget._heightCOntainer,
                    svgPath: "assets/Images/imposto.svg",
                    widhtSvg: widget._widhtSvg,
                    heightSvg: widget._heightSvg),
                /*ContainerCustomButton(
                    btnText: "CaféSs",
                    widhtContainer: widget._widhtContainer,
                    heightContainer: widget._heightCOntainer,
                    svgPath: "assets/Images/cafe.svg",
                    widhtSvg: widget._widhtSvg,
                    heightSvg: widget._heightSvg),*/
              ])
            ],
          ),
        ));
  }
}

// ContainerCustomButton(
//   svgPath: "assets/Images/produto.svg",
//   btnText: "Text",
//   widhtContainer: 100,
//   heightContainer: 100,
//   widhtSvg: 55,
//   heightSvg: 55,
//   onPressedFunction: () {
//       Navigator.pushReplacement(
//       context,
//       MaterialPageRoute(
//           builder: (context) => const ProductScreen()));
//   },
// ),