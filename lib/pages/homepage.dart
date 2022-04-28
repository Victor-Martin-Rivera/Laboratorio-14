//Libreria para json
import 'dart:convert';
import 'package:flutter/material.dart';
//Libreria de rootBundle
import 'package:flutter/services.dart';
import 'package:lab_14/pages/estudiantes.dart';

class Homepage extends StatefulWidget {
  const Homepage({
    Key? key,
  }) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late List _estudiantes = [];

  //Lo carga de manera asincrono
  Future<String> loadJsonData() async {
    var jsonText = await rootBundle.loadString('assets/datos.json');
    //evalúa la cadena y devuelve un objeto Json
    setState(() => _estudiantes = json.decode(jsonText));
    return 'success';
  }

  @override
  //Es llamado cuando un objeto se inserta en el arbol
  void initState() {
    super.initState();
    //Carga todo el metodo
    loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Laboratorio 14'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Container(
          alignment: Alignment.center,
          color: const Color.fromARGB(255, 231, 230, 230),
          //Crea una lista de items
          child: ListView.builder(
              //Evalua el rango de los items con respecto a la lista creada
              itemCount: _estudiantes.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    Estudiantes(index, _estudiantes)));
                      },
                      leading: CircleAvatar(
                        child: Text(_estudiantes[index]["nombre_completo"]
                            .toString()
                            .substring(0, 1)),
                      ),
                      title: Text(_estudiantes[index]['nombre_completo']),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    ),
                    const Divider(),
                  ],
                );
              })),
    );
  }
}
