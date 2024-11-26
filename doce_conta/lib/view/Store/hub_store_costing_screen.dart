import 'package:doce_conta/widgets/container_custom_button.dart';
import 'package:flutter/material.dart';
import 'taxes_cost_screen.dart';
import 'infrastructure_costs_screen.dart';
import 'it_costs_screen.dart';
import 'payment_cost_screen.dart';


class HubCosting extends StatefulWidget {
  const HubCosting({super.key});

  final double _widhtContainer = 140;
  final double _heightCOntainer = 140;
  final double _widhtSvg = 55;
  final double _heightSvg = 55;

  @override
  State<HubCosting> createState() => _HubCosting();
}

class _HubCosting extends State<HubCosting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff003326),
        title: const Text(
          "Qual custo deseja cadastrar?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(  
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,  
                  children: [
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Infraestrutura",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/infraestrutura.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg,
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => InfraestructureCost()));
                        },
                      ),
                    ),
                    const SizedBox(height: 20),  
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Impostos",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/imposto.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg,
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TaxesCosting()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,  
                  children: [
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Comunicação",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/comunicacao.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg, 
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CostingSystem()));
                        },
                      ),
                    ),
                    const SizedBox(height: 20),  
                    Flexible(
                      child: ContainerCustomButton(
                        btnText: "Folha de pagamento",
                        widhtContainer: widget._widhtContainer,
                        heightContainer: widget._heightCOntainer,
                        svgPath: "assets/Images/folha_pagamento.svg",
                        widhtSvg: widget._widhtSvg,
                        heightSvg: widget._heightSvg,
                        onPressedFunction: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PaymentCost()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
