import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';

final database = Database();

Handler middleware(Handler handler) {
  return handler.use(provider<Database>((context) => database));
}