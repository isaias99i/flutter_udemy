import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  const EntradaRadioButton({Key? key}) : super(key: key);

  @override
  State<EntradaRadioButton> createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  String? _escolhaUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RadioListTile(
                title: Text("Masculino"),
                value: "m",
                groupValue: _escolhaUser,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUser = escolha;
                  });
                }),
            RadioListTile(
                title: Text("Feminino"),
                value: "f",
                groupValue: _escolhaUser,
                onChanged: (String? escolha) {
                  setState(() {
                    _escolhaUser = escolha;
                  });
                }),

            RaisedButton(
                child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 20
                  ),
                ),
                onPressed: (){
                  print("Resultado: ${_escolhaUser}");
                })

            // Text("Masculino"),
            // Radio(
            //     value: "m",
            //     groupValue: _escolhaUser,
            //     onChanged: (String? escolha) {
            //       setState(() {
            //         _escolhaUser = escolha;
            //       });
            //       print("Resultado ${escolha}");
            //     }),
            // Text("Feminino"),
            // Radio(
            //     value: "f",
            //     groupValue: _escolhaUser,
            //     onChanged: (String? escolha) {
            //       setState(() {
            //         _escolhaUser = escolha;
            //       });
            //       print("Resultado ${escolha}");
            //     })
          ],
        ),
      ),
    );
  }
}
