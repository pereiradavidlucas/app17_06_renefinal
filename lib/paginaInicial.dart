import 'package:app17_06_renefinal/Perfil.dart';
import 'package:flutter/material.dart';


class Paginainicial extends StatelessWidget {
  final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(
    fontSize: 20,
  )); //style do botao
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2C1EFB),
        elevation: 2,
        centerTitle: true,
        title: Text(
          'Rastreando a sarcopenia',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 20),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            tooltip: 'Perfil',
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Perfil()));
              //ScaffoldMessenger.of(context)
              //  .showSnackBar(const SnackBar(content: Text('Perfil')));
            },
          ),
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            tooltip: 'Sair',
            color: Color.fromARGB(255, 255, 255, 255),
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('Sair')));
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "SARCOPENIA",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 39, 39, 39),
                  fontSize: 30),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: const Image(
                    image: AssetImage('assets/pinicial.jpeg'),
                    width: double.infinity,
                    height: 230,
                    fit: BoxFit.cover,
                    /*Image.network('Link',width: double.infinity,height: 230,fit: BoxFit.fitWidth,),*/
                  ),
                ),
              ),
            ),
            Text(
              'O que é',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  " Trata-se de uma alteração da musculatura esquelética caracterizada pela redução da força e da massa muscular secundária ao envelhecimento, podendo comprometer o desempenho físico do indivíduo."),
            ),

            /* Row(          mainAxisAlignment: MainAxisAlignment.center,
 children: [
              Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: AssetImage('assets/pinicial.jpeg'),
                    width: double.infinity,
                    height: 30,
                    fit: BoxFit.cover,
                    /*Image.network('Link',width: double.infinity,height: 230,fit: BoxFit.fitWidth,),*/
                  ),
                ),
              ),
            ),Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: AssetImage('assets/pinicial.jpeg'),
                    width: double.infinity,
                    height: 30,
                    fit: BoxFit.cover,
                    /*Image.network('Link',width: double.infinity,height: 230,fit: BoxFit.fitWidth,),*/
                  ),
                ),
              ),
            ),Container(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    image: AssetImage('assets/pinicial.jpeg'),
                    width: double.infinity,
                    height: 30,
                    fit: BoxFit.cover,
                    /*Image.network('Link',width: double.infinity,height: 230,fit: BoxFit.fitWidth,),*/
                  ),
                ),
              ),
            ),
            
            
            
            ],




            ),*/
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/pesoIdade');
                },
                style: style,
                child: const Text('Iniciar questionario'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/registrar');
                },
                style: style,
                child: const Text('Cadastro'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}