import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';
import 'dart:convert';

Future<Response> onRequest(
  RequestContext context,
  String email,
  String botiquin,
) async {
  return switch(context.request.method) {
    HttpMethod.get => _getBotiquin(context, email),
    HttpMethod.post => _postMedicamento(context, email),
    _=>Future.value(Response(body: 'No se puede realizar esta operación'))
  };
}

Future<Response>_getBotiquin(RequestContext context, String email) async {
  final database = context.read<Database>();
  final botiquin = await database.getMedicamentosFromBotiquin(email: email);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: botiquin.map((e) => e.toJson()).toList(),
    );
  }
}

Future<Response> _postMedicamento(RequestContext context, String email) async{
  final database = context.read<Database>();
  final requestBody = await context.request.json() as Map<String, dynamic>;
  final botiquin = await database.getBotiquinByEmail(email: email);
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    requestBody['botiquinId'] = botiquin.id;
    final medicamento = await database.addMedicamento(medicamento: Medicamento.fromJson(requestBody));
    if(medicamento == null){
        return Response(statusCode: 409);
      }else{
      return Response(body: jsonEncode(medicamento.toJson()));
      }
  }
}

