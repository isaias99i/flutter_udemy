import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  const Jogo({Key? key}) : super(key: key);

  @override
  State<Jogo> createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
  var _imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelect(String escolhaUsuario){
    var opcoes = ["pedra", "papel", "tesoura"];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];
    print("Escolha do app ${escolhaApp}");
    print("Escolha do usuario: ${escolhaUsuario}");

    switch(escolhaApp){
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }

    //Validação do ganhador
    if(
    (escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
    (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
    (escolhaUsuario == "papel" && escolhaApp == "pedra")
    ){
      setState(() {
        _mensagem = "Você ganhou!!!!";
      });

    }else if(
      (escolhaUsuario == "tesoura" && escolhaApp == "pedra") ||
      (escolhaUsuario == "papel" && escolhaApp == "tesoura") ||
      (escolhaUsuario == "pedra" && escolhaApp == "papel")){
    setState(() {
      _mensagem = "Você perdeu!!!!";
    });
    }else{
      setState(() {
        _mensagem = "Empate!";
      });

    }


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jokenpo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          //text
          //imagem
          //text results
          //Linha 3 imagens
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          Image(image: this._imagemApp),
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              _mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _opcaoSelect("pedra"),
                child: Image.asset("imagens/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelect("papel"),
                child: Image.asset("imagens/papel.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelect("tesoura"),
                child: Image.asset("imagens/tesoura.png", height: 100,),
              ),
              /*
              Image.asset("imagens/pedra.png", height: 100,),
              Image.asset("imagens/papel.png", height: 100,),
              Image.asset("imagens/tesoura.png",height: 100,),
              */
            ],
          )
        ],
      ),
    );
  }
}
