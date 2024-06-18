import 'package:app17_06_renefinal/modelos/ButtonState.dart';
import 'package:app17_06_renefinal/paginaInicial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Resultado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Usar o Provider para acessar o estado dos botões
    final buttonState = Provider.of<ButtonState>(context);

    // Calcular o somatório
    int somatorio = buttonState.buttonValue;

    /* String message;
    if (somatorio > 11) {
      message = 'direcionadas à eSF.';
    } else if (somatorio <= 10) {
      message = 'Não direcionadas à eSF.';
    }
*/
    return Scaffold(
      appBar: AppBar(
        title: Text('Somatório'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Somatório dos valores dos botões:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '$somatorio',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Provider.of<ButtonState>(context, listen: false).reset();
              },
              child: Text('Limpar'),
            ),
            /*Text(message,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
            ),*/
            // Text(message),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Paginainicial()));
              },
              child: Text('Tela inical'),
            ),
          ],
        ),
      ),
    );
  }
}
