import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:teste_rene05_06/ButtonState.dart';
//import 'package:provider/provider.dart';
//import 'package:teste_rene05_06/ButtonState.dart';

class pesoIdade extends StatefulWidget {
  @override
  _Screen6State createState() => _Screen6State();
}

class _Screen6State extends State<pesoIdade> {
  //final _controller = TextEditingController();
  final _idade = TextEditingController();
  final _peso = TextEditingController();

  //double _length = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('CIRCUNFERÊNCIA DA PANTURRILHA')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Precisamos dos seguintes dados para avaliação de obesidade sarcopênica.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _idade,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Idade:',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _peso,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Pesso (kg):',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                /*Provider.of<ButtonState>(context, listen: false).idadePeso(
                 // _idade.text, arrumar aki 
                 /// _peso.text,
                );*/
                Navigator.pushNamed(context, '/perg1');
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}
/*Provider.of<ButtonState>(context, listen: false).setUserProfile(
                  _nameController.text,
                  _emailController.text,
                  _selectedDate,
                );* */