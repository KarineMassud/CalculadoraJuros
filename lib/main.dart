import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: CJS(),
  ));
}

class CJS extends StatefulWidget {
  @override
  _CJSState createState() => _CJSState();
}

class _CJSState extends State<CJS> {
  TextEditingController capital = new TextEditingController();
  TextEditingController taxa = new TextEditingController();
  TextEditingController periodo = new TextEditingController();

  String resultado = 'Resultado';

  void calcular(){
    double capitalN = double.parse(capital.text);
    double taxaN = double.parse(taxa.text)/100;
    double periodoN = double.parse(taxa.text);

    double montante = capitalN + (capitalN*taxaN*periodoN);

    setState(() {
      resultado = "O montante final é $montante reais";
    });



  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de Juros Simples"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextFormField(
            controller: capital,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Insira um valor de capital'),

          ),
             TextFormField(
               controller: taxa,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Insira um valor a taxa (més)'),

          ),
            TextFormField(
              controller: periodo,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: 'Insira o periodo(meses)'),

          ),
          RaisedButton(
            onPressed: (){calcular();},
            child: Text("Calcular"),
          ),
          Text(resultado)


          
        ],
      ),
      
    );
  }
}
