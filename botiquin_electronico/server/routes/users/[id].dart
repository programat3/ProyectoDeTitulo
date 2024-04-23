import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

Future <Response> onRequest(
  RequestContext context,
  String id,
) async {
  
  return switch(context.request.method) {
    HttpMethod.put=> _updateUser(context, id),
    HttpMethod.delete=>_deleteUser(context, id),
    _=>Future.value(Response(body: 'This is default'))
  };
}

Future<Response> _deleteUser(RequestContext context, String id) async {
  final database = context.read<Database>();
  final deleted = await database.deleteUser(id:id);
  if(deleted == null){
    return Response(statusCode: 409);
  }
  return Response.json(
    body: {
      'message': 'User with id: $id deleted!',
      'deleted': deleted.toString(),
    }
  );
}

Future<Response> _updateUser(RequestContext context,String id) async {
  final database = context.read<Database>();
  final requestBody = await context.request.json() as Map<String, dynamic>;
  final user = await database.updateUser(email: requestBody['email']! as String,
   newPassword: requestBody['password']! as String);
  if(user != null){
  return Response.json(
    body: {
      'message': 'User with id: $id updated!',
      'user': user.toJson(),
    }
  );
  }else{
    return Response(statusCode: 409);
  }
}
