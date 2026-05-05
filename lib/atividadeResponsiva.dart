import 'package:flutter/material.dart';

void main() {
  runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login",
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    double largura = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: largura * 0.8,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [

                  const SizedBox(height: 40),

                const Icon(Icons.lock, size: 80, color: Colors.blue),

                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),

                  const SizedBox(height: 20),

                  
                  const TextField(
                    decoration: InputDecoration(
                      labelText: "Senha",
                    ),
                  ),

                  const SizedBox(height: 30),

                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text("Entrar"),
                    ),
                  ),

                  const SizedBox(height: 10),

                  
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 233, 215, 247),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "Criar conta",
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}