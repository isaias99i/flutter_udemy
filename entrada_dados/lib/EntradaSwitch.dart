import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  const EntradaSwitch({Key? key}) : super(key: key);

  @override
  State<EntradaSwitch> createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUser = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[


            SwitchListTile(
                title: Text("Receber notificações?"),
                value: _escolhaUser,
                onChanged: (bool? valor) {
                  setState(() {
                    _escolhaUser = valor!;
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

            /*Switch(
                value: _escolhaUser,
                onChanged: (bool? valor){
                  setState(() {
                    _escolhaUser = valor!;
                  });
                }),
            Text("Receber notificações?")*/
          ],
        ),
      ),
    );
  }
}
