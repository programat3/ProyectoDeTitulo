import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:db/db.dart';



Handler middleware(Handler handler) {
  return handler
  .use(provider<Database>((context) => Database(datasourceUrl: "postgres://postgres.pwgcbynbrriisskoatqf:Yr53Mgy,6e+aYP%@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?pgbouncer=true&connection_limit=1")));
}