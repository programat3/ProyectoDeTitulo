import 'package:botiquin_electronico/signed_users/new_botiquin.dart';
import 'package:botiquin_electronico/users/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

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
    var user = getUserName();
    if(user.toString() == 'null'){
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
                  decoration: BoxDecoration(
                    color: Color(0xFFF2E0D7), // Color de fondo azul claro
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Botiquín Electrónico',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                          height:
                              20), // Añadir un espacio entre el texto y los botones
                      SizedBox(
                        width: 200, // Ancho máximo
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: const Text('Iniciar Sesión'),
                        ),
                      ),
                      const SizedBox(
                          height:
                              20), // Añadir un espacio entre el texto y los botones
                      SizedBox(
                        width: 200, // Ancho máximo
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const NewBotiquin()),
                            );
                          },
                          child: const Text('Crear Cuenta'),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    }
    else{
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
                  child: Text(
                    'Bienvenido $user',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  )
                )
              )
            )
          )
        )
        );}
  }
}