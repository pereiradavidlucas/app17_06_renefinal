/*import 'package:app17_06_renefinal/Perfil.dart';
import 'package:app17_06_renefinal/modelos/ButtonState.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Registrar extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<Registrar> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate)
      setState(() {
        _selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastrar ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Nome:',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email:',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Text(
                  'Data de nascimento : ${_selectedDate.toLocal()}'
                      .split(' ')[0],
                ),
                IconButton(
                  onPressed: () => _selectDate(context),
                  icon: Icon(Icons.calendar_today),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Provider.of<ButtonState>(context, listen: false).setUserProfile(
                  _nameController.text,
                  _emailController.text,
                  _selectedDate,
                );
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Perfil()));
              },
              child: Text('Cadastrar'),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Google'),
            ),
          ],
        ),
      ),
    );
  }
}
*/