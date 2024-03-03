import 'package:flutter/material.dart';

class MyStepper extends StatefulWidget {
  const MyStepper({Key? key}) : super(key: key);

  @override
  _MyStepperState createState() => _MyStepperState();
}

class _MyStepperState extends State<MyStepper> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Proceso',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black), 
        ),
        backgroundColor: Colors.white, 
      ),
      backgroundColor: Colors.white, 
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _currentStep,
        onStepContinue: () {
          setState(() {
            if (_currentStep < 2) {
              _currentStep++;
            }
          });
        },
        onStepCancel: () {
          setState(() {
            if (_currentStep > 0) {
              _currentStep--;
            }
          });
        },
        steps: <Step>[
          Step(
            title: const Text('Planificación', style: TextStyle(color: Colors.black)), 
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Objetivo',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  'El objetivo de esta aplicación saber mas acerca de Flutter y mostrar el proceso de la creación de una App simple.',
                ),
                SizedBox(height: 8),
                Text(
                  'Arquitectura',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text(
                  'Para diseñar la arquitectura se necesita revisar que se quiere lograr con esta App.',
                ),
                SizedBox(height: 8),
                Text(
                  'Planificar implementación',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text('Esto solo es necesario investigar y pensar que es lo que se quiere realizar'),
              ],
            ),
            isActive: _currentStep >= 0,
          ),
          Step(
            title: const Text('Codificación', style: TextStyle(color: Colors.black)), 
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Realizar pruebas unitarias',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text('1. La primer prueba que se realizo fue la de internet ya que sin esto la aplicación no abriria'),
                Text('2. La segunda prueba que se realizo fue la de debug para revisar si el codigo se corria de una forma exacta'),
                Text('3. Igual conforme se va desarrollando la aplicación, se pueden ir desarrollando ciertas pruebas.'),
                SizedBox(height: 8),
                Text(
                  'Integrar funcionalidades paso a paso',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text('1. Primero se agregaron las funcionalidades de todas las pantallas'),
                Text('2. Despues se agregaron los colores de las pantallas y se agregaron algunas funciones'),
                Text('3. Conforme se va diseñando se van actualizando para ver los cambios'),
              ],
            ),
            isActive: _currentStep >= 1,
          ),
          Step(
            title: const Text('Depuración', style: TextStyle(color: Colors.black)), 
            content: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Identificar y corregir errores',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text('1.Se optmiza el rendimiento mediante pruebas, para verificar el funcionamiento de la aplicación.'),
                SizedBox(height: 8),
                Text(
                  'Optimizar el rendimiento',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                ),
                Text('Para optimizar el rendimiento es necesario realizar pruebas exhaustivas.'),
                Text('1. Al correr la aplicación se tarda un poco.'),
                Text('2. Al elegir los colores de la aplicación, se bugguea un poco.'),
              ],
            ),
            isActive: _currentStep >= 2,
          ),
        ],
      ),
    );
  }
}
