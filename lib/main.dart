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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Login",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const Center(
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Usuario",
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Senha",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Entrar"),
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Esqueci minha senha"),
              Text("Cadrastro"),
            ],
          ),
        ],
      ),
    );
  }
}

class child {
  const child();
}
