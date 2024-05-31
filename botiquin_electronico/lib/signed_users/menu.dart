import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  final String email;
  const Menu(this.email) ;

  @override
  State<Menu> createState() => _MyAppState();
}

Future<String?> getUserName() async {
  SharedPreferences prefs;
  prefs = await SharedPreferences.getInstance();
  return prefs.getString('email');
}

class _MyAppState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    if(widget.email == null){
      Navigator.pop(context);
      return MaterialApp(
        home: Container(child: Text("No se ha podido iniciar sesión"),
        )
        
      );
    }
    else{
      String email = widget.email;
      return MaterialApp(
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              color: Color(0xFF2879C2), // Color de fondo azul
            ),
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width *
                    1, // Ancho máximo del contenedor
                child: Container(
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                        children: [
                          const SizedBox(
                          height:
                              10), // Añadir un espacio entre el texto y los botones
                            SizedBox(
                              width: 200, // Ancho máximo
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MedicamentoSKU()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal:
                                          20), // Ajusta los valores de padding según sea necesario
                                  backgroundColor: Color(0xFF2879C2),
                                  elevation: 0,
                                  side: BorderSide(color: Colors.white, width: 2),
                                ),
                                child: Text(
                                  'Escanear Medicina',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          const SizedBox(
                          height:
                              10), // Añadir un espacio entre el texto y los botones
                            SizedBox(
                              width: 200, // Ancho máximo
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Menu(email)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal:
                                          20), // Ajusta los valores de padding según sea necesario
                                  backgroundColor: Color(0xFF2879C2),
                                  elevation: 0,
                                  side: BorderSide(color: Colors.white, width: 2),
                                ),
                                child: Text(
                                  'Crear Botiquin',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                          const SizedBox(
                          height:
                              10), // Añadir un espacio entre el texto y los botones
                            SizedBox(
                              width: 200, // Ancho máximo
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Menu(email)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal:
                                          20), // Ajusta los valores de padding según sea necesario
                                  backgroundColor: Color(0xFF2879C2),
                                  elevation: 0,
                                  side: BorderSide(color: Colors.white, width: 2),
                                ),
                                child: Text(
                                  'Guardar Botiquin',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                      const SizedBox(
                          height:
                      10), // Añadir un espacio entre el texto y los botones
                      SizedBox(
                              width: 200, // Ancho máximo
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Menu(email)),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 16,
                                      horizontal:
                                          20), // Ajusta los valores de padding según sea necesario
                                  backgroundColor: Color(0xFF2879C2),
                                  elevation: 0,
                                  side: BorderSide(color: Colors.white, width: 2),
                                ),
                                child: Text(
                                  'Subir Botiquin',
                                  style: TextStyle(fontSize: 18, color: Colors.white),
                                ),
                              ),
                            ),
                    ],
                  )
                )
              )
            )
          )
        )
        );}
  }
}