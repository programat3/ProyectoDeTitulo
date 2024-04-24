import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future<Response> onRequest(
  RequestContext context,
  String email,
  String botiquin,
) async {
  return switch(context.request.method) {
    HttpMethod.get => _getBotiquin(context, email),

    _=>Future.value(Response(body: 'No se puede realizar esta operación'))
  };
}

Future<Response>_getBotiquin(RequestContext context, String email) async {
  final database = context.read<Database>();
  final botiquin = await database.getBotiquinByEmail(email: context.request.uri.pathSegments.elementAt(1));
  if(botiquin == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: botiquin.toJson(),
    );
  }
}

