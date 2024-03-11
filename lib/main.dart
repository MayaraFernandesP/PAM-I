import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.blue,
      )),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade"),
                Text("Atividade"),
              ],
            ),
            Column(
              children: [
                Text("Mayara Fernandes Pinto"),
                Text("E-mail: mayara.fernandes2@etec.sp.gov.br"),
              ],
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text("2H3"), Text("Matão")],
              ),
              Text("2024"),
            ]),
          ],
        )),
      ),
    );
  }
}

void main() => runApp(const Aplicacao());
