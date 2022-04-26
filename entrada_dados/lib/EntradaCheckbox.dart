import 'package:flutter/material.dart';
class EntradaCheckbox extends StatefulWidget {
  const EntradaCheckbox({Key? key}) : super(key: key);

  @override
  State<EntradaCheckbox> createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {

  bool _selectBr = false;
  bool _selectIt = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget> [

            CheckboxListTile(
              title: Text("Comida Brasileira fav"),
                subtitle: Text("Dobradinha"),
                //activeColor: Colors.black,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _selectBr,
                onChanged: (bool? valor){
                setState(() {
                  _selectBr = valor!;
                });

                }),
            CheckboxListTile(
              title: Text("Comida Italiana"),
                subtitle: Text("Pizza"),
                //activeColor: Colors.black,
                //selected: true,
                //secondary: Icon(Icons.add_box),
                value: _selectIt,
                onChanged: (bool? valor){
                setState(() {
                  _selectIt = valor!;
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
                  print(
                      "Comida Brasileira: ${_selectBr}"
                      " Comida Italiana: ${_selectIt}");
                })

            //Text("Comida BR"),
            // Checkbox(
            //   value: _select,
            //   onChanged: (bool? valor){
            //     setState(() {
            //       _select = valor!;
            //     });
            //     print("Checkbox ${valor.toString()}");
            //
            //
            //     },
            // )


          ],
        ),
      ),
    );
  }
}
