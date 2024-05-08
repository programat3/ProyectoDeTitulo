import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:orm/orm.dart';
import 'generated/client.dart';
import 'generated/model.dart';
import 'generated/prisma.dart';

class Database {
  Database()
  : _db = PrismaClient(datasourceUrl: 'postgres://postgres.pwgcbynbrriisskoatqf:BotiquinElectronico2024@aws-0-sa-east-1.pooler.supabase.com:6543/postgres');
  PrismaClient _db;

  Future<User> createUser({ required String email, required String password}) async {
    final user = UserCreateInput(email: email, password: _hash(password));
    return _db.user.create(data: PrismaUnion.$1(user) );
  }

  Future<User?> getUserByEmail({ required String email}) async {
    return _db.user.findUnique(where: UserWhereUniqueInput(email: email));
  }

  Future<Iterable<User?>> getUsers() async {
    return await _db.user.findMany();
  }

}

String _hash(String password){
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}
