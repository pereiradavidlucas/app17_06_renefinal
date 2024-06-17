import 'package:app17_06_renefinal/ButtonState.dart';
import 'package:app17_06_renefinal/main.dart';
import 'package:app17_06_renefinal/perg/Perg6.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Perg5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'QUEDAS',
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
                  MaterialPageRoute(builder: (context) => HomeScreen()));
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
                  image: AssetImage('assets/perg5.jpeg'),
                  width: double.infinity,
                  height: 230,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              'Quantas vezes você caius no último ano?',
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
                      MaterialPageRoute(builder: (context) => Perg6()));
                },
                style: style,
                child: Text('Nenhuma '),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(1);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg6()));
                },
                style: style,
                child: Text('Uma a três quedas'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Provider.of<ButtonState>(context, listen: false)
                      .updateButtonValue(2);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Perg6()));
                },
                style: style,
                child: Text('4 ou mais quedas'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
