import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

// este es el estado de la clase
// se pone guion bajo porque SOLO se utiliza en este archivo
class _ContadorPageState extends State<ContadorPage> {
  final TextStyle _estiloTexto = const TextStyle(fontSize: 24);

  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador Stateful'),
        centerTitle: true,
        elevation: 6,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Número de clicks', style: _estiloTexto),
          Text('$_contador', style: _estiloTexto),
        ],
      )),
      floatingActionButton: _crearBotones(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
            child: const Icon(Icons.remove), onPressed: _restar),
        const SizedBox(
          width: 8.0,
        ),
        FloatingActionButton(
            child: const Icon(Icons.exposure_zero), onPressed: _reiniciar),
        const SizedBox(
          width: 8.0,
        ),
        FloatingActionButton(child: const Icon(Icons.add), onPressed: _sumar),
      ],
    );
  }

  _restar() {
    setState(() {
      _contador--;
    });
  }

  _reiniciar() {
    setState(() {
      _contador = 0;
    });
  }

  _sumar() {
    setState(() {
      _contador++;
    });
  }
}
