import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.green,
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
        title: const Text("Meu peimeiro app"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Programação"), Text("Aplicação"), Text("Mobile"),
            Column(children: [Text("Mayara Fernandes Pinto"), Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("2H3"), Text("2024")])],)],
          ),
        ),
      ),
    );
  }
}

//void main() {
//  runApp(const Aplicacao());
//}

void main() => runApp(const Aplicacao());
