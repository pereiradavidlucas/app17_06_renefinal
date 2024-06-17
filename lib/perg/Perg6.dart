import 'package:app17_06_renefinal/ButtonState.dart';
import 'package:app17_06_renefinal/main.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Perg6 extends StatefulWidget {
  @override
  _Screen6State createState() => _Screen6State();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    textStyle: const TextStyle(
  fontSize: 20,
)); //style do botao

class _Screen6State extends State<Perg6> {
  final _controller = TextEditingController();
  double _length = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'CIRCUNFERÊNCIA DA PANTURRILHA',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 36, 13, 13),
              fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.home),
            tooltip: 'Perfil',
            color: Color.fromARGB(255, 13, 0, 255),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen()));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/perg6.jpeg'),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Você deverá medir a circunferência da sua perna DIREITA em pé, com os pés afastados 20cm e com as pernas relaxadas.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Comprimento (cm)',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _length = double.parse(_controller.text);
                });
                Provider.of<ButtonState>(context, listen: false)
                    .addBasedOnLength(_length);
                Navigator.pushNamed(context, '/result');
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
