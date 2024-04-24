import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';



class NewBotiquin extends StatelessWidget {
  const NewBotiquin({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Crea tu botiquín';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}
class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var email;
    var name;
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Ingrese su email',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.email))),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Porfavor ingrese su email';
                }
                email = value;
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nombre del botiquín',
                hintText: 'Ingrese el nombre de su botiquín',
                icon: const Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                        child: const Icon(Icons.medical_services))),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Porfavor ingrese su email';
                }
                name = value;
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
                    http.post(
                      Uri.parse('http://10.0.2.2:8080/users/$email'),
                      headers: <String, String>{
                        'Content-Type': 'application/json; charset=UTF-8',
                      },
                      body: jsonEncode(<String, String>{
                        'nombre': name,
                      }),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}