// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'model.dart' as _i1;
import 'prisma.dart' as _i2;

class Medicamento {
  const Medicamento({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.botiquin,
  });

  factory Medicamento.fromJson(Map json) => Medicamento(
        id: json['id'],
        nombre: json['nombre'],
        fechaVencimiento: json['fechaVencimiento'],
        cantidad: json['cantidad'],
        sku: json['SKU'],
        botiquinId: json['botiquinId'],
        botiquin: json['botiquin'] is Map
            ? _i1.Botiquin.fromJson(json['botiquin'])
            : null,
      );

  final String? id;

  final String? nombre;

  final String? fechaVencimiento;

  final int? cantidad;

  final String? sku;

  final String? botiquinId;

  final _i1.Botiquin? botiquin;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        'botiquin': botiquin?.toJson(),
      };
}

class Botiquin {
  const Botiquin({
    required this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
    this.user,
    this.$count,
  });

  factory Botiquin.fromJson(Map json) => Botiquin(
        id: json['id'],
        nombre: json['nombre'],
        userId: json['userId'],
        medicamentos: (json['medicamentos'] as Iterable?)
            ?.map((json) => _i1.Medicamento.fromJson(json)),
        user: json['user'] is Map ? _i1.User.fromJson(json['user']) : null,
        $count: json['_count'] is Map
            ? _i2.BotiquinCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String id;

  final String? nombre;

  final String? userId;

  final Iterable<_i1.Medicamento>? medicamentos;

  final _i1.User? user;

  final _i2.BotiquinCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos?.map((e) => e.toJson()),
        'user': user?.toJson(),
        '_count': $count?.toJson(),
      };
}

class User {
  const User({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
    this.$count,
  });

  factory User.fromJson(Map json) => User(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        password: json['password'],
        botiquin: (json['botiquin'] as Iterable?)
            ?.map((json) => _i1.Botiquin.fromJson(json)),
        $count: json['_count'] is Map
            ? _i2.UserCountOutputType.fromJson(json['_count'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final String? password;

  final Iterable<_i1.Botiquin>? botiquin;

  final _i2.UserCountOutputType? $count;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin?.map((e) => e.toJson()),
        '_count': $count?.toJson(),
      };
}
