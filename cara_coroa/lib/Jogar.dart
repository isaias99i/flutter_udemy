import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  void _exibirResultado(String results) {

    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Resultado(results)));
  }

  void _gerarNumero() {
    var itens = ["images/moeda_cara.png", "images/moeda_coroa.png"];
    var numSort = Random().nextInt(itens.length);
    print("Estou em jogar ${numSort}");
    /*? "images/moeda_cara.png" : "images/moeda_coroa.png";*/
    _exibirResultado(itens[numSort]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xffffcc80),
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("images/logo.png"),
            Padding(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: _gerarNumero,
                child: Image.asset("images/botao_jogar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
