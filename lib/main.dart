import 'package:flutter/material.dart';
import 'package:appflutter_bfsg/pag1.dart';
import 'package:appflutter_bfsg/pag2.dart';
import 'package:appflutter_bfsg/pag3.dart';
import 'package:appflutter_bfsg/pag4.dart';
import 'package:appflutter_bfsg/pag5.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MiPaginaPrincipal(),
    );
  }
}

class MiPaginaPrincipal extends StatefulWidget {
  const MiPaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<MiPaginaPrincipal> createState() => _MiPaginaPrincipalState();
}

class _MiPaginaPrincipalState extends State<MiPaginaPrincipal> {
  int _indiceSeleccionado = 0;

  static const List<Widget> _opcionesWidget = <Widget>[
    PageOne(),
    MyStepper(),
    PageThree(),
    MiVentana(),
    PageFive(),
  ];

  void _enItemTocado(int indice) {
    setState(() {
      _indiceSeleccionado = indice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, 
      appBar: AppBar(
        title: const Text(
          'Todo sobre "¿Cómo hacer mi primera app de Flutter?"',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold), 
        ),
        backgroundColor: Color.fromARGB(255, 193, 216, 255), 
      ),
      body: _opcionesWidget.elementAt(_indiceSeleccionado),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[200], 
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Proceso',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Formulario',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard_rounded),
            label: 'Código',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_sharp),
            label: 'Acerca de',
          ),
        ],
        currentIndex: _indiceSeleccionado,
        selectedItemColor: Colors.black, 
        onTap: _enItemTocado,
      ),
    );
  }
}
