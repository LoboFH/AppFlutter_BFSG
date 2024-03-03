import 'package:flutter/material.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Acerca de Flutter',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), // Cambiar color del texto a negro
        ),
        backgroundColor: Colors.white, // Cambiar color de fondo de la barra de navegación a blanco
      ),
      backgroundColor: Colors.white, // Cambiar color de fondo del cuerpo a blanco
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://miro.medium.com/v2/resize:fit:1124/1*r4s4gfNPah7qwjzzP8h3qA.png',
              width: 150,
              height: 150,
            ),
            const SizedBox(height: 20),
            const Text(
              'Para saber más información acerca de Flutter, te recomendamos visitar la página oficial:',
              style: TextStyle(fontSize: 16, color: Colors.black), // Cambiar color del texto a negro
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'https://flutter.dev/',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue), // Cambiar color del texto a azul
            ),
          ],
        ),
      ),
    );
  }
}
