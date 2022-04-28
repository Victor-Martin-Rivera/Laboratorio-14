// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Estudiantes extends StatelessWidget {
  //Estado es como si fuera mi index
  int estado;
  List _datosEstudiante = [];

  Estudiantes(
    //Se inicializa en el constructor para obtener los datos
    this.estado,
    this._datosEstudiante, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio 14'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Text(
                        //Poner circulo con respecto al nombre del primer subindice
                        _datosEstudiante[estado]["nombre_completo"]
                            .toString()
                            .substring(0, 1)),
                  ),
                  //Nombre completo
                  title: Text(
                    _datosEstudiante[estado]['nombre_completo'],
                    style: const TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    _datosEstudiante[estado]['telefono'],
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 15),
                  ),
                ),
                //Matricula
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Matricula: " + _datosEstudiante[estado]['matricula'],
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Carrera
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Carrera: " + _datosEstudiante[estado]['carrera'],
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Semestre
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Semestre: " + _datosEstudiante[estado]['semestre'],
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Correo
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Correo: " + _datosEstudiante[estado]['email'],
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
