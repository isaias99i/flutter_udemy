import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
    String _value = "R\$ 0";
  void _priceBtc() async {
    String moeda = "btc";
    String url = "https://www.mercadobitcoin.net/api/${moeda}/ticker/";
    http.Response response = await http.get(url);
    Map<String, dynamic> retorno = jsonDecode(response.body);
    print("Retorno: " + retorno.toString());
    //response = await http.get(url);
    String buy = retorno["ticker"]["last"];
    print("${buy.toString()} estou aqui");
    setState(() {
      _value = "R\$ ${buy.toString()}";
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/bitcoin.png"),
              Padding(
                padding: EdgeInsets.only(top: 30, bottom: 30),
                child: Text(_value,
                    style: TextStyle(
                      fontSize: 35,
                    )),
              ),
              Padding(
                  padding: EdgeInsets.all(16),
                  child: RaisedButton(
                      child: Text(
                        "Atualizar",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      color: Colors.orange,
                      padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                      onPressed: _priceBtc))
            ],
          ),
        ),
      ),
    );
  }
}
