import 'package:botiquin_electronico/medicamento/lectura.dart';
import 'package:botiquin_electronico/medicamento/medicamento_scanner.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

class Medicina extends StatelessWidget {
  final String nombre;
  const Medicina(this.nombre,{super.key});

  @override
  Widget build(BuildContext context) {
    final gemini = Gemini.instance;
    final widthScreen = MediaQuery.of(context).size.width;
    final w = widthScreen * 0.8;
    final w6 = widthScreen * 0.3;

    return Scaffold(
      body: Center(
        child: FutureBuilder(
          future: gemini.text('Para qué sirve $nombre en sólo 35 caracteres').then((value) => value?.output ?? 'No se encontró la descripción'), // Cambiar la descripción
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else if (snapshot.hasData) {
                final composition = snapshot.data as String;
                return FittedBox(
                  fit: BoxFit.fill,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(color: Colors.blue,child: FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          children: [
                            SizedBox(width: w, child: Text('Nombre: $nombre', style: TextStyle(color: Colors.white) ,textScaler: TextScaler.linear(2),)),
                            SizedBox(
                              width: w6,
                              child: IconButton(onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Lectura('Nombre: $nombre'),));
                                                    }, icon: Icon(Icons.voice_chat), iconSize: w6*0.7,),
                            ),
                          ],
                        ),
                      ),),
                      FittedBox(
                        fit: BoxFit.fill,
                        child: Row(
                          children: [
                            SizedBox(width: w, child: Text('¿Para qué sirve?: $composition', textScaler: TextScaler.linear(2),)),
                            SizedBox(
                              width: w6,
                              child: IconButton(onPressed: (){
                                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Lectura('¿Para qué sirve?: $composition'),));
                                                    }, icon: Icon(Icons.voice_chat), iconSize: w6*0.7,),
                            ),
                          ],
                        ),
                      ),
                      
                      
                      FutureBuilder(future: gemini.text('Sugerencias para el consumo de $nombre en sólo 40 caracteres').then((value) => value?.output ?? 'No se encontraron las sugerencias de $nombre'), 
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          if (snapshot.hasError) {
                            return Text('Error: ${snapshot.error}');
                          } else if (snapshot.hasData) {
                            final sugerencias = snapshot.data as String;
                            return Container(color: Colors.deepOrange,child: FittedBox(
                              fit: BoxFit.fill,  
                              child: Row(
                                children: [
                                  SizedBox(width: w ,child: Text('Sugerencias: \n $sugerencias',style: TextStyle(color: Colors.white) ,textScaler: TextScaler.linear(2),)),
                                  SizedBox(
                                    width: w6,
                                    child: IconButton(onPressed: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => Lectura('Sugerencias: \n $sugerencias'),));
                                    }, icon: Icon(Icons.voice_chat), iconSize: w6*0.7,),
                                  ),
                                ],
                              ),
                            ));
                          }
                        }
                        return const CircularProgressIndicator();
                      }),
                    ],
                  ),
                );
              }
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}