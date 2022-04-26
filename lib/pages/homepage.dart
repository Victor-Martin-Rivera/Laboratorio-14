import 'package:flutter/material.dart';
import 'package:lab_14/pages/estudiantes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final List<Estudiante> _estudiantes = [
    Estudiante("16171472", "Victor Rivera Moreno", "Sistemas", "10",
        "+646123456", "victor@ite.edu.mx"),
    Estudiante("18659804", "Julio Cesar Chavez", "Sistemas", "8", "+646304831",
        "julio@ite.edu.mx"),
    Estudiante("20147508", "Leticia Aurora Escobar", "Industrial", "5",
        "+6673472485", "leticia@ite.edu.mx"),
    Estudiante("18595427", "Cristina Hernandez Ayala", "Electronica", "7",
        "+6691293857", "cristina@ite.edu.mx")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio 13'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
        alignment: Alignment.center,
        color: const Color.fromARGB(255, 231, 230, 230),
        child: ListView.builder(
            itemCount: _estudiantes.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              Estudiantes(nombre: _estudiantes[index])));
                },
                title: Text(
                  _estudiantes[index].nombrecompleto,
                  style: const TextStyle(fontSize: 18),
                ),
                //Se muestra al principio
                leading: CircleAvatar(
                  child: Text(
                    _estudiantes[index].nombrecompleto.substring(0, 1),
                  ),
                ),
                //Se muestra al final
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              );
            }),
      ),
    );
  }
}

class Estudiante {
  //Late significa que la variable se utilizara mas tarde
  late String matricula;
  late String nombrecompleto;
  late String carrera;
  late String semestre;
  late String telefono;
  late String correo;

  //Constructor
  Estudiante(this.matricula, this.nombrecompleto, this.carrera, this.semestre,
      this.telefono, this.correo);
}
