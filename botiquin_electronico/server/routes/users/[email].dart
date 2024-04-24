import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future <Response> onRequest(
  RequestContext context,
  String email,
) async {
  
  return switch(context.request.method) {
    HttpMethod.get => _getUser(context, email),
    _=>Future.value(Response(body: context.request.uri.pathSegments.last))
  };
}

Future<Response>_getUser(RequestContext context, String email) async {
  final database = context.read<Database>();
  final user = await database.getUserbyEmail(email: context.request.uri.pathSegments.last);
  if(user == null){
    return Response(statusCode: 409);
  }
  else{
    return Response.json(
      body: user.toJson(),
    );
  }
}
