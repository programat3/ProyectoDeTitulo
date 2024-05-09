import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future<Response> onRequest(RequestContext context) async {
  final database = context.read<Database>();

  if (context.request.method == HttpMethod.post) {
    final requestBody = await context.request.json() as Map<String, dynamic>;
    final user = await database.createUser(email: requestBody['email']! as String, 
                                            password: requestBody['password']! as String);
    return Response(body: jsonEncode(user.toJson()));

  }

  if (context.request.method == HttpMethod.get) {
    final users = await database.getUsers();
    return Response(body: jsonEncode(
      users.map((user) => user?.toJson()).toList(),),
      );
  }
  return Response(body: 'Welcome to Dart Frog!');
}