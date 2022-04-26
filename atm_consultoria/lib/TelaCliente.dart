import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TelaCliente extends StatefulWidget {
  const TelaCliente({Key? key}) : super(key: key);

  @override
  State<TelaCliente> createState() => _TelaClienteState();
}

class _TelaClienteState extends State<TelaCliente> {
  var _DetailClient = AssetImage("images/detalhe_cliente.png");
  var _cliente1 = AssetImage("images/cliente1.png");
  var _cliente2 = AssetImage("images/cliente2.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Clientes"),
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image(image: _DetailClient),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Clientes",
                              style: TextStyle(fontSize: 20),
                            ))
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: _cliente1),
                          Text(
                            "Empresa de Software",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image(image: _cliente2),
                          Text(
                            "Empresa de Auditoria",
                            style: TextStyle(fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ]
              )
          ),
        )
    );
  }
}
