import 'dart:convert';

import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future<Response> onRequest(
RequestContext context,
String email,
String botiquin,
String medicamento,
) async {
  return switch(context.request.method) {
    HttpMethod.get => _getMedicamento(context, email, botiquin),
    HttpMethod.post => _postMedicamento(context, email),
    HttpMethod.delete => _deleteMedicamento(context, email, botiquin),
    _=>Future.value(Response(body: 'No se puede realizar esta operación'))
  };
}

Future<Response>_getMedicamento(RequestContext context, String email, String botiquin) async {
  final database = context.read<Database>();
  final medicamento = await database.getMedicamento(email: email, nombreBotiquin: botiquin, sku: context.request.uri.pathSegments.last);

    return Response.json(
      body: medicamento.toJson(),
    );
}

Future<Response>_postMedicamento(RequestContext context, String email) async{
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

Future<Response> _deleteMedicamento(RequestContext context, String email, String botiquin) async{
  final database = context.read<Database>();
  final medicamento = await database.deleteMedicamento(email: email, nombreBotiquin: botiquin, sku: context.request.uri.pathSegments.last);
  if(medicamento == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: medicamento.toJson(),
    );
  }
}
