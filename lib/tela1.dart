import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  const Tela1({super.key});

  @override
  State<Tela1> createState() => _HomePageState();
}

class _HomePageState extends State<Tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.menu_book,
              size: 120.0,
              color: Colors.green,
            ),
            Text(
              "Aplicação Principal",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                      child: const Text("Mapa 1"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/segundo');
                      }),
                  ElevatedButton(
                      child: const Text("Mapa 2"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/terceiro');
                      }),
                  ElevatedButton(
                      child: const Text("Mapa 3"),
                      onPressed: () {
                        Navigator.pushNamed(context, '/quarto');
                      }),
                ]),
          ],
        ),
      ), // Botão para executar o calculo do IMC,
    );
  }
}
