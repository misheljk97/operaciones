import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({ Key? key }) : super(key: key);

  @override
  _AppHomeState createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Operaciones'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.calculate, size: 60, color: Colors.blue),
              const SizedBox(height: 10),
              const Text(
                'Calculadora',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              
              // Campo para el primer número
              TextField(
                controller: num1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese el primer número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_one),
                ),
              ),
              const SizedBox(height: 20),
              
              // Campo para el segundo número
              TextField(
                controller: num2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Ingrese el segundo número',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.looks_two),
                ),
              ),
              const SizedBox(height: 30),

              // Botones en fila horizontal con iconos
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton.icon(
                      onPressed: sumar,
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('sumar'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: restar,
                      icon: const Icon(Icons.remove, size: 18),
                      label: const Text('restar'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: multiplicar,
                      icon: const Icon(Icons.close, size: 18),
                      label: const Text('multiplicar'),
                    ),
                    const SizedBox(width: 8),
                    ElevatedButton.icon(
                      onPressed: dividir,
                      icon: const Icon(Icons.horizontal_rule, size: 18),
                      label: const Text('dividir'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              
              // Contenedor estético para el resultado
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade200),
                ),
                child: Text(
                  'Resultado: $resultado',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sumar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 + n2;
    });
  }

  void restar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 - n2;
    });
  }

  void multiplicar() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 * n2;
    });
  }

  void dividir() {
    double n1 = double.tryParse(num1.text) ?? 0;
    double n2 = double.tryParse(num2.text) ?? 0;
    setState(() {
      resultado = n1 / n2;
    });
  }
}