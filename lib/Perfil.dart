import 'package:app17_06_renefinal/modelos/ButtonState.dart';
import 'package:app17_06_renefinal/paginaInicial.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<ButtonState>(context);
    final name = model.name;
    final email = model.email;
    final birthDate = model.birthDate;
    final buttonState = Provider.of<ButtonState>(context);
    final idade = model.idade;
    final peso = model.peso;

    int somatorio = buttonState.buttonValue;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2C1EFB),
        elevation: 2,
        centerTitle: true,
        title: Text(
          'Perfil Usuario ',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Perfil',
            color: Color.fromARGB(255, 241, 241, 241),
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
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(
                  'assets/logo.png'), // Coloque sua imagem de perfil aqui
            ),
            SizedBox(height: 20),
            Text(
              name.isNotEmpty ? name : 'Nome não encontrado ',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              email.isNotEmpty ? email : 'Email não encontrato ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              birthDate != null
                  ? 'Date of Birth: ${birthDate.toLocal()}'.split(' ')[0]
                  : 'No birth date provided',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Idade: $idade',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Peso: $peso',
              style: TextStyle(fontSize: 24),
            ),
            Text(
              '$somatorio',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Voltar'),
            ),
          ],
        ),
      ),
    );
  }
}
