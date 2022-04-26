import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<Map> _recuperarPreco() async {
    String url = "https://www.mercadobitcoin.net/api/btc/ticker/";
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map>(
      future: _recuperarPreco(),
      builder: (context, snapshot) {

        String results = "";

        switch (snapshot.connectionState) {
          case ConnectionState.none:
          case ConnectionState.waiting:
            print("conexao waiting");
            results = "Carregando...";
            break;
          case ConnectionState.active:
          case ConnectionState.done:
            print("conexao done");
            if (snapshot.hasError){
              results = "erro no carregamento";
            }else{
              double valor = snapshot.data!["ticker"]["buy"];
              results = "Preco do bitcoin: ${valor.toString()}";
            }
            break;
        }
        return Center(
          child: Text(results),
        );
      },
    );
  }
}
