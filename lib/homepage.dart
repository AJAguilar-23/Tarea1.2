import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  double contador = 10;

  final estilo = const TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.w800,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculos con el numero 2'),
        backgroundColor: Colors.green[400],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Toque un boton para operar', style: TextStyle(fontSize: 30),),
            const SizedBox(height: 25),
            Text('$contador', style: estilo),
            
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.green[400],
            onPressed: sumar,
            child: const Icon(Icons.exposure_plus_2),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green[400],
          
            onPressed: restar,
            child: const Icon(Icons.exposure_minus_2),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green[400],
            onPressed: multiplicar,
            child: const Text("*2", style: TextStyle(fontSize:18)),
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green[400],
            onPressed: dividir,
            child: const Text("/2", style: TextStyle(fontSize:18)),
          ),
        ],
      ),
    );
  }
  void sumar() {
    setState(() {});

    contador+=2;

  }
  void restar() {
    setState(() {});

    contador-=2;

  }
  void multiplicar() {
    setState(() {});

    contador*=2;

  }
  void dividir() {
    setState(() {});

    contador/=2;

  }
}
