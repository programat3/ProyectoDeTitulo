import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:orm/orm.dart';
import 'generated/client.dart';
import 'generated/model.dart';
import 'generated/prisma.dart';


class Database {
  Database()
  : _db = PrismaClient(datasourceUrl: "postgres://postgres.pwgcbynbrriisskoatqf:Yr53Mgy,6e+aYP%@aws-0-sa-east-1.pooler.supabase.com:6543/postgres?pgbouncer=true&connection_limit=1"
);
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

  Future<Botiquin?> createBotiquin({ required String email, required String nombre}) async {
    final user = await getUserByEmail(email: email);
    if(user == null){
      return null;
    }
    final botiquin = BotiquinCreateInput(
      user: UserCreateNestedOneWithoutBotiquinInput(connect: UserWhereUniqueInput(email: email)), 
      nombre: nombre, 
      medicamentos: MedicamentoCreateNestedManyWithoutBotiquinInput());
    return _db.botiquin.create(data: PrismaUnion.$1(botiquin));
  }

  Future<Botiquin?> getBotiquin({ required String email, required String nombre}) async {
    final user = await getUserByEmail(email: email);
    if(user == null){
      return null;
    }
    return _db.botiquin.findUnique(where: BotiquinWhereUniqueInput(
      userId: user.id));
  }

  Future<Medicamento?> createMedicamento({ required String email, required String nombreBotiquin, 
                                            required String sku,required String nombre, required int cantidad, 
                                            required String fechaVencimiento}) async {
    final botiquin = await getBotiquin(email: email, nombre: nombreBotiquin);
    final user = await getUserByEmail(email: email);
    if(botiquin == null){
      return null;
    }
    if(user == null){
      return null;
    }
    final medicamento = MedicamentoCreateInput(
      botiquin: BotiquinCreateNestedOneWithoutMedicamentosInput(connect: BotiquinWhereUniqueInput(userId: user.id)), 
      nombre: nombre, 
      sku: sku,
      fechaVencimiento: fechaVencimiento,
      cantidad: cantidad);
    return _db.medicamento.create(data: PrismaUnion.$1(medicamento));
  }

  Future<Iterable<Medicamento?>?> getMedicamentos({ required String email, required String nombreBotiquin}) async {
    final botiquin = await getBotiquin(email: email, nombre: nombreBotiquin);
    if(botiquin == null){
      return null;
    }
    return await _db.medicamento.findMany(where: MedicamentoWhereInput(botiquinId: PrismaUnion.$1(
      StringFilter(equals: PrismaUnion.$1(botiquin.id))
    )));
  }

}

String _hash(String password){
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}
