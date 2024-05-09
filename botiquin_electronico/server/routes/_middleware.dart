import 'package:dart_frog/dart_frog.dart';
import 'package:db/src/db_base.dart';

final database = Database();

Handler middleware(Handler handler) {
  return handler.use(provider<Database>((context) => database));
}