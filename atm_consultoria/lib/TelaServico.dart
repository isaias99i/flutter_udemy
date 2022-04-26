import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  const TelaServico({Key? key}) : super(key: key);

  @override
  State<TelaServico> createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  var _servico = AssetImage("images/detalhe_servico.png");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviços"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(image: _servico),
                Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos serviços",
                      style: TextStyle(fontSize: 20
                      ),
                    )
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Consultoria",

                )),
            Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Cálculo de Preços",
                )),
            Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Acompanhamento de Projetos",

                ))
          ],
        ),
        ),
          ),
    );
  }
}
