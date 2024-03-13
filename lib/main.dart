import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
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
        backgroundColor: Color.fromARGB(255, 30, 242, 76),
        //backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Nome: Mayara Fernandes Pinto"),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("Meu filme favorito é: "), Center()],
          ),
        ],
      ),
    );
  }
}
