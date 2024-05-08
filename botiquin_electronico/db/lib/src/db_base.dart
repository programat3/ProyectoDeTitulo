import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:db/db.dart';
import 'package:orm/logger.dart';

class Database {
  Database()
  : _db = PrismaClient(
    stdout: Event.values,
    datasources: Datasources(
      db: 'postgresql://postgres:TrabajoDeTitulo2024@localhost:5432/trabajodetitulo?schema=public'
    ),
  );
  PrismaClient _db;
  
  Future <User?> createUser({
    required String email,
    required String password,
  }) async {
    return _db.user.create(
      data: UserCreateInput(
        email: email,
        password: _hash(password),
      ),
    );
  }

  Future<Iterable<User>> getUsers() async {
    return  _db.user.findMany();
  }

  Future<User?> updateUser({
    required String email, 
    required String newPassword}) async {
    return _db.user.update(
      where: UserWhereUniqueInput(email: email),
      data: UserUpdateInput(password: StringFieldUpdateOperationsInput(set: _hash(newPassword))),
    );  
  }
  Future deleteUser({
    required String id,
  }) async {
    return _db.user.delete(
      where: UserWhereUniqueInput(id: id),
    );
  }

  Future<User?> getUserbyEmail({
    required String email,
  }) async {
    return _db.user.findUnique(
      where: UserWhereUniqueInput(email: email),
    );
  }

  Future<Botiquin?> getBotiquinByEmail({
    required String email,
  }) async {
    var user = await _db.user.findUnique(
      where: UserWhereUniqueInput(email: email),
    );
    if (user == null) {
      return null;
    }
    else{
      return _db.botiquin.findUnique(
        where: BotiquinWhereUniqueInput(userId: user.id),
      );
    }
  }

  Future<Botiquin?> createBotiquin({
    required String email,
    required String nombre,
  }) async {
    var user = await _db.user.findUnique(
      where: UserWhereUniqueInput(email: email),
    );
    if (user == null) {
      return null;
    }
    else{
      return _db.botiquin.create(
        data:BotiquinCreateInput(nombre: nombre, user: UserCreateNestedOneWithoutBotiquinInput(connect: UserWhereUniqueInput(id: user.id)),
      ));
    }
  }

  Future<Medicamento?> addMedicamento({
    required Medicamento medicamento,
  }) async {
    return _db.medicamento.create(
      data: MedicamentoCreateInput(nombre: medicamento.nombre, cantidad: medicamento.cantidad, botiquin: BotiquinCreateNestedOneWithoutMedicamentosInput(connect: BotiquinWhereUniqueInput(id: medicamento.botiquinId))),
    );
  }

  Future<Iterable<Medicamento>?> getMedicamentosFromBotiquin({
    required String email,
  }) async {
    var user = await _db.user.findUnique(
      where: UserWhereUniqueInput(email: email),
    );
    if (user == null) {
      return null;
    }
    else{
      return _db.medicamento.findMany(
        where: MedicamentoWhereInput(botiquin: BotiquinRelationFilter( $is: BotiquinWhereInput(userId: StringFilter( equals: user.id)))),
      );
    }
  }
}
String _hash(String password){
  final bytes = utf8.encode(password);
  final digest = sha256.convert(bytes);
  return digest.toString();
}
