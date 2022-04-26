import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  String results;

  Resultado(this.results);

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  void voltar() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(widget.results),
            Padding(
              padding: EdgeInsets.all(16),
              child: GestureDetector(
                onTap: voltar,
                child: Image.asset("images/botao_voltar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
