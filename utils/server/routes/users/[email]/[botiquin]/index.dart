import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';
import 'dart:convert';

Future<Response> onRequest(
RequestContext context,
String email,
String botiquin
) async {
  return switch(context.request.method) {
    HttpMethod.get => _getBotiquin(context, email),
    HttpMethod.post => _postMedicamento(context, email),
    HttpMethod.delete => _deleteBotiquin(context, email),
    HttpMethod.put => _putBotiquin(context, email),
    _=>Future.value(Response(body: 'No se puede realizar esta operación'))
  };
  }

Future<Response>_getBotiquin(RequestContext context, String email) async {
  final database = context.read<Database>();
  final botiquin = await database.getMedicamentos(email: email, nombreBotiquin: context.request.uri.pathSegments.last);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: botiquin.map((med) => med!.toJson()).toList(),
    );
  }
}

Future<Response> _postMedicamento(RequestContext context, String email) async{
  final database = context.read<Database>();
  final requestBody = await context.request.json() as Map<String, dynamic>;
  final botiquin = await database.getBotiquin(email: email, nombre: context.request.uri.pathSegments.last);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    requestBody['botiquinId'] = botiquin.id;
    final medicamento = await database.createMedicamento(
      email: email, 
      nombreBotiquin: context.request.uri.pathSegments.last, 
      sku: requestBody['sku']! as String, 
      nombre: requestBody['nombre']! as String, 
      cantidad: requestBody['cantidad']! as int, 
      fechaVencimiento: requestBody['fechaVencimiento']! as String);
    if(medicamento == null){
        return Response(statusCode: 409);
      }else{
      return Response(body: jsonEncode(medicamento.toJson()));
      }
  }
}

Future<Response> _deleteBotiquin(RequestContext context, String email) async{
  final database = context.read<Database>();
  final botiquin = await database.deleteBotiquin(email: email, nombre: context.request.uri.pathSegments.last);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: botiquin.toJson(),
    );
  }
}

Future<Response> _putBotiquin(RequestContext context, String email) async{
  final database = context.read<Database>();
  final requestBody = await context.request.json() as Map<String, dynamic>;
  final botiquin = await database.getBotiquin(email: email, nombre: context.request.uri.pathSegments.last);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    final botiquin = await database.updateBotiquin(email: email, nombre: requestBody['nombre']! as String);
    if(botiquin == null){
        return Response(statusCode: 409);
      }else{
      return Response(body: jsonEncode(botiquin.toJson()));
      }
  }
}
