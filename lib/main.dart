import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePge(),
    );
  }
}

class HomePge extends StatelessWidget {
  const HomePge({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text(
            "Olá, qual seu nome?",
          ),
          Center(
            child: SizedBox(
              width: 300,
              child: Column(
                children: [
                  TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      labelText: "Nome",
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 150,
            height: 60,
            child: ElevatedButton(
              onPressed: () => cumprimenta(context, controller),
              child: const Text("OK"),
            ),
          ),
        ],
      ),
    );
  }

  void cumprimenta(BuildContext context, TextEditingController controller) {
    final nome = controller.text;
    final mensagem = "Olá, $nome!";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }
}
