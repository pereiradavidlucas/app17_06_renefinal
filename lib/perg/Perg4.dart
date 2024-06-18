import 'package:app17_06_renefinal/modelos/ButtonState.dart';
import 'package:app17_06_renefinal/paginaInicial.dart';
import 'package:app17_06_renefinal/perg/Perg5.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Perg4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
      fontSize: 20,
    )); //style do botao
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'SUBIR ESCADAS',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 36, 13, 13),
              fontSize: 30),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Perfil',
            color: Color.fromARGB(255, 13, 0, 255),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Paginainicial()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/perg4.jpeg'),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'O quanto de dificuldade você tem para subir um lance de escadas de 10 degraus?',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(0);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg5()));
                },
                style: style,
                child: Text('Nenhuma'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(1);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg5()));
                },
                style: style,
                child: Text('Alguma'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(2);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg5()));
                },
                style: style,
                child: Text('Muita ou não consegue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
