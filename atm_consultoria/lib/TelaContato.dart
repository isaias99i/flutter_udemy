import 'package:flutter/material.dart';

class TelaContato extends StatefulWidget {
  const TelaContato({Key? key}) : super(key: key);

  @override
  State<TelaContato> createState() => _TelaContatoState();
}

class _TelaContatoState extends State<TelaContato> {

  var _contato = AssetImage("images/detalhe_contato.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Image(image: _contato),
                        Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              "Contato",
                              style: TextStyle(color: Colors.deepOrange, fontSize: 20),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:
                      Text(
                        "atendimento@atmconsultoria.com.br",
                        style: TextStyle(fontSize: 18),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:
                      Text(
                        "Telefone: (11) 3525-5595",
                        style: TextStyle(fontSize: 18),
                      )
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:
                      Text(
                        "Celular: (11) 99399-8961",
                        style: TextStyle(fontSize: 18),
                      )
                  )
                ],
              )
          )
      ),
    );
  }
}
