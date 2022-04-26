import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Bring me to life",
    "This on's for you and me, living in out our dreams",
    "I'm not afraid",
    "O mundo não é um grande arco-íris, é um lugar cruel que não quer saber o quanto você é durão"
  ];

  var _fraseGerada = "Clique abaixo para gerar nova frase";

  void _gerarFrase(){
    var numSort = Random().nextInt(_frases.length);
    
    setState(() {    
    _fraseGerada = _frases[numSort];      
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases da noite"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Container(
        padding: EdgeInsets.all(16),
        //width: double.infinity,
        /*decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.amber)),*/
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
              color: Colors.green,
              onPressed: _gerarFrase,
              )
          ],
          ),
      ),
      )
    );
  }
}
