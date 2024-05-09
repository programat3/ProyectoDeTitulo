import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future <Response> onRequest(
  RequestContext context,
   String email,
) async {
  
   return switch(context.request.method) {
      HttpMethod.get => _getUser(context, email),
      HttpMethod.post => _createBotiquin(context, email),
     _=>Future.value(Response(body: 'No se puede realizar esta operación'))
  };
}

 Future<Response>_getUser(RequestContext context, String email) async {
  final database = context.read<Database>();
  final user = await database.getUserByEmail(email: context.request.uri.pathSegments.last);
  if(user == null){
    
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: user.toJson(),
    );
  }
}

Future<Response>_createBotiquin(RequestContext context, String email) async {
  final database = context.read<Database>();
  final requestBody = await context.request.json() as Map<String, dynamic>;
  final nombre = requestBody['nombre']! as String;
  final botiquin = await database.createBotiquin(email: email, nombre: nombre);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  return Response.json(
    body: botiquin.toJson(),
  );
}
