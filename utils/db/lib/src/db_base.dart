import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:db/db.dart';
import 'package:orm/orm.dart';
import 'generated/client.dart';
import 'generated/model.dart';
import 'generated/prisma.dart';


class Database {
  Database(
    {
      required String datasourceUrl,
    }
  )
  : _db = PrismaClient(datasourceUrl: datasourceUrl
);
  PrismaClient _db;

  Future<User> createUser({ required String email, required String password}) async {
    final user = UserCreateInput(email: email, password: _hash(password));
    return _db.user.create(data: PrismaUnion.$1(user) );
  }

  Future<User?> getUserByEmail({ required String email}) async {
    return _db.user.findUnique(where: UserWhereUniqueInput(email: email));
  }

  Future<User?> getUserByEmailAndPassword({ required String email, required String password}) async {
    return _db.user.findUnique(where: UserWhereUniqueInput(email: email, password: PrismaUnion.$2(_hash(password))));
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

  Future<Iterable<Botiquin?>?> getBotiquines({ required String email}) async {
    final user = await getUserByEmail(email: email);
    if(user == null){
      return null;
    }
    else{
    return await _db.botiquin.findMany(where: BotiquinWhereInput(
      userId: PrismaUnion.$2(user.id)
    ));}
  }

  Future<Botiquin?> updateBotiquin({ required String email, required String nombre}) async {
    final user = await getUserByEmail(email: email);
    if(user == null){
      return null;
    }
    final botiquin = BotiquinUpdateInput(
      user: UserUpdateOneRequiredWithoutBotiquinNestedInput(connect: UserWhereUniqueInput(email: email)), 
      nombre: PrismaUnion.$1(nombre));
    return _db.botiquin.update(where: BotiquinWhereUniqueInput(userId: user.id), data: PrismaUnion.$1(botiquin));
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

  Future<Botiquin?> deleteBotiquin({ required String email, required String nombre}) async {
    final user = await getUserByEmail(email: email);
    if(user == null){
      return null;
    }
    return _db.botiquin.delete(where: BotiquinWhereUniqueInput(userId: user.id));
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

  Future<Medicamento> getMedicamento({ required String email, required String nombreBotiquin, 
                                       required String sku}) async {
    final botiquin = await getBotiquin(email: email, nombre: nombreBotiquin);
    if(botiquin == null){
      throw Exception('Botiquin not found');
    }
    final medicamento = await _db.medicamento.findUnique(where: MedicamentoWhereUniqueInput(sku: sku));
    if(medicamento == null){
      throw Exception('Medicamento not found');
    }
    return medicamento;
  }

  Future<Medicamento?> updateMedicamento({ required String email, required String nombreBotiquin, 
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
    final medicamento = MedicamentoUpdateInput(
      botiquin: BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput(connect: BotiquinWhereUniqueInput(userId: user.id)), 
      nombre: PrismaUnion.$1(nombre), 
      sku: PrismaUnion.$1(sku),
      fechaVencimiento: PrismaUnion.$1(fechaVencimiento),
      cantidad: PrismaUnion.$1(cantidad));
    return _db.medicamento.update(where: MedicamentoWhereUniqueInput(sku: sku), data: PrismaUnion.$1(medicamento));
  }

  Future<Medicamento?> deleteMedicamento({ required String email, required String nombreBotiquin, 
                                            required String sku}) async {
    final botiquin = await getBotiquin(email: email, nombre: nombreBotiquin);
    final user = await getUserByEmail(email: email);
    if(botiquin == null){
      return null;
    }
    if(user == null){
      return null;
    }
    return _db.medicamento.delete(where: MedicamentoWhereUniqueInput(sku: sku));
  }

}

String _hash(String password){
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}
