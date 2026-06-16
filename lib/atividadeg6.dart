import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const IdiomaApp());
}

// Classe principal
class IdiomaApp extends StatefulWidget {
  const IdiomaApp({super.key});

  @override
  State<IdiomaApp> createState() => _IdiomaAppState();
}

// Classe responsável pela lógica
class _IdiomaAppState extends State<IdiomaApp> {
  // false = Português
  // true = Inglês
  bool isEnglish = false;

  @override
  void initState() {
    super.initState();
    carregarIdioma();
  }

  // Salva o idioma escolhido
  Future<void> salvarIdioma(bool valor) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ingles', valor);
  }

  // Carrega o idioma salvo
  Future<void> carregarIdioma() async {
    final prefs = await SharedPreferences.getInstance();
    bool? idiomaSalvo = prefs.getBool('ingles');

    setState(() {
      isEnglish = idiomaSalvo ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        appBar: AppBar(
          title: const Text("Seleção de Idioma"),
        ),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                isEnglish ? "Hello user" : "Olá usuário",
                style: const TextStyle(fontSize: 28),
              ),

              const SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEnglish = false;
                      });

                      salvarIdioma(false);
                    },
                    child: const Text("Português"),
                  ),

                  const SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isEnglish = true;
                      });

                      salvarIdioma(true);
                    },
                    child: const Text("English"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}