import 'package:flutter/material.dart';

class AlcoolGasolina extends StatefulWidget {
  const AlcoolGasolina({Key? key}) : super(key: key);

  @override
  State<AlcoolGasolina> createState() => _AlcoolGasolinaState();
}

class _AlcoolGasolinaState extends State<AlcoolGasolina> {
  var _apresentation =
      "Saiba qual a melhor opção para abastecimento do seu carro: ";
  var _pAlcool = 'Preco Alcool, ex R\$ 8,59';
  var _pGasolina = "Preço Gasolina, ex R\$ 9,20";
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";
  void _calcular(){
    double? precoAlcool = double.tryParse( _controllerAlcool.text );
    double? precoGasolina = double.tryParse( _controllerGasolina.text );

    if (precoAlcool == null || precoGasolina == null){
      setState(() {
        _textoResultado= ("preço nulo");
      });
    }else{
      _textoResultado = precoAlcool / precoGasolina >= 0.7 ? "Melhor abastecer com Gasolina" : "Melhor abastecer com Alcool";
      setState(() {
        _textoResultado;
      });
    }
    _limparCampos();
  }

  void _limparCampos(){
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
      ),
      body: Container(
          child: SingleChildScrollView(
              padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Image.asset("images/logo.png"),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    _apresentation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: _pAlcool),
                  style: TextStyle(
                      fontSize: 22
                  ),
                  controller: _controllerAlcool,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: _pGasolina),
                  style: TextStyle(
                      fontSize: 22
                  ),
                  controller: _controllerGasolina,
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: RaisedButton(
                        textColor: Colors.white,
                        child: Text("Calcular",
                          style: TextStyle(
                              fontSize: 20
                          ),),
                        color: Colors.lightBlue,
                        onPressed: () {
                          _calcular();
                        })
                ),
                Padding(padding: EdgeInsets.only(top: 20),
                  child: Text(
                    _textoResultado,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold
                    ),
                  ),)

              ],
            )
          ),
        ),
    );
  }
}
