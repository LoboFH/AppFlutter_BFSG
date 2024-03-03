import 'package:flutter/material.dart';

class MiVentana extends StatelessWidget {
  const MiVentana({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Código',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), // Cambiar color del texto a negro
        ),
        backgroundColor: Colors.white, // Cambiar color de fondo de la barra de navegación a blanco
      ),
      backgroundColor: Colors.white, // Cambiar color de fondo del cuerpo a blanco
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 10),
            const Text(
              '¿Cómo crear una clase en Flutter?',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Center(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 400),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.network(
                      'https://3.bp.blogspot.com/--dpzZGFCFxE/XAB6RsBy7mI/AAAAAAAAGkM/XTfN8dL1AtkHHpEym_ZZKJYkhEnqvKIgwCLcBGAs/s1600/image2a.png',
                      width: 200,
                      height: 175,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Pasos para la creación de una clase en Flutter.',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text('1. Persona es el nombre de la clase.'),
            const Text(
                '2. nombre y edad son propiedades de la clase Persona.'),
            const Text(
                '3. Persona(this.nombre, this.edad) es el constructor de la clase Persona que inicializa las propiedades nombre y edad.'),
            const Text(
                '4. imprimirInformacion() es un método dentro de la clase Persona que imprime la información de la persona.'),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
