import 'package:flutter/material.dart';

import 'homepage.dart';

class Estudiantes extends StatelessWidget {
  final Estudiante nombre;

  const Estudiantes({Key? key, required this.nombre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio 13'),
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
                      //Poner circulo con respecto al nombre
                      nombre.nombrecompleto.substring(0, 1),
                    ),
                  ),
                  //Nombre Completo y telefono
                  title: Text(
                    nombre.nombrecompleto,
                    style: const TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    nombre.telefono,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.6), fontSize: 15),
                  ),
                ),
                //Matricula
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Matricula: " + nombre.matricula,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Carrera
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Carrera: " + nombre.carrera,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Semestre
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Semestre: " + nombre.semestre,
                    style: TextStyle(color: Colors.black.withOpacity(0.7)),
                  ),
                ),
                //Correo
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    "Correo: " + nombre.correo,
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
