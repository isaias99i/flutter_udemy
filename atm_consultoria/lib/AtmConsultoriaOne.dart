import 'package:atm_consultoria/TelaContato.dart';
import 'package:atm_consultoria/TelaEmpresa.dart';
import 'package:atm_consultoria/TelaServico.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TelaCliente.dart';

class AtmConsultoriaOne extends StatefulWidget {
  const AtmConsultoriaOne({Key? key}) : super(key: key);

  @override
  State<AtmConsultoriaOne> createState() => _AtmConsultoriaOneState();
}

class _AtmConsultoriaOneState extends State<AtmConsultoriaOne> {
  var _logo = AssetImage("images/logo.png");
  var _empresa = AssetImage("images/menu_empresa.png");
  var _servico = AssetImage("images/menu_servico.png");
  var _cliente = AssetImage("images/menu_cliente.png");
  var _contato = AssetImage("images/menu_contato.png");

  void _abrirEmpresa(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaEmpresa()));
  }
  void _abrirServico(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaServico()));
  }
  void _abrirCliente(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaCliente()));
  }
  void _abrirContato(){
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context)=> TelaContato()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("ATM Consultoria"),
          backgroundColor: Colors.green,
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child:
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: _logo),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: _abrirEmpresa,
                            child: Image(image: _empresa),
                          ),
                          GestureDetector(
                            onTap: _abrirServico,
                            child: Image(image: _servico),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 32),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: _abrirCliente,
                            child: Image(image: _cliente),
                          ),
                          GestureDetector(
                            onTap: _abrirContato,
                            child: Image(image: _contato),
                          ),
                        ],
                      ),
                    ),
          ]),
        ));
  }
}
