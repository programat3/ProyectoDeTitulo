// ignore_for_file: non_constant_identifier_names

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:orm/orm.dart' as _i1;

import 'prisma.dart' as _i2;

class BotiquinCountOutputType {
  const BotiquinCountOutputType({this.medicamentos});

  factory BotiquinCountOutputType.fromJson(Map json) =>
      BotiquinCountOutputType(medicamentos: json['medicamentos']);

  final int? medicamentos;

  Map<String, dynamic> toJson() => {'medicamentos': medicamentos};
}

class UserCountOutputType {
  const UserCountOutputType({this.botiquin});

  factory UserCountOutputType.fromJson(Map json) =>
      UserCountOutputType(botiquin: json['botiquin']);

  final int? botiquin;

  Map<String, dynamic> toJson() => {'botiquin': botiquin};
}

enum QueryMode implements _i1.PrismaEnum {
  $default._('default'),
  insensitive._('insensitive');

  const QueryMode._(this.name);

  @override
  final String name;
}

class NestedStringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedStringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
      };
}

class StringNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i2.NestedStringNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
      };
}

class NestedIntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class IntFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class BotiquinRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.BotiquinWhereInput? $is;

  final _i2.BotiquinWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class MedicamentoWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.botiquin,
  });

  final _i1.PrismaUnion<_i2.MedicamentoWhereInput,
      Iterable<_i2.MedicamentoWhereInput>>? AND;

  final Iterable<_i2.MedicamentoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MedicamentoWhereInput,
      Iterable<_i2.MedicamentoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fechaVencimiento;

  final _i1.PrismaUnion<_i2.IntFilter, int>? cantidad;

  final _i1.PrismaUnion<_i2.StringFilter, String>? sku;

  final _i1.PrismaUnion<_i2.StringFilter, String>? botiquinId;

  final _i1.PrismaUnion<_i2.BotiquinRelationFilter, _i2.BotiquinWhereInput>?
      botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        'botiquin': botiquin,
      };
}

class MedicamentoListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.MedicamentoWhereInput? every;

  final _i2.MedicamentoWhereInput? some;

  final _i2.MedicamentoWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UserRelationFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  final _i2.UserWhereInput? $is;

  final _i2.UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => {
        'is': $is,
        'isNot': isNot,
      };
}

class BotiquinWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
    this.user,
  });

  final _i1
      .PrismaUnion<_i2.BotiquinWhereInput, Iterable<_i2.BotiquinWhereInput>>?
      AND;

  final Iterable<_i2.BotiquinWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.BotiquinWhereInput, Iterable<_i2.BotiquinWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  final _i2.MedicamentoListRelationFilter? medicamentos;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos,
        'user': user,
      };
}

class BotiquinListRelationFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  final _i2.BotiquinWhereInput? every;

  final _i2.BotiquinWhereInput? some;

  final _i2.BotiquinWhereInput? none;

  @override
  Map<String, dynamic> toJson() => {
        'every': every,
        'some': some,
        'none': none,
      };
}

class UserWhereInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.BotiquinListRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class UserWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserWhereUniqueInput({
    this.id,
    this.email,
    this.AND,
    this.OR,
    this.NOT,
    this.name,
    this.password,
    this.botiquin,
  });

  final String? id;

  final String? email;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? AND;

  final Iterable<_i2.UserWhereInput>? OR;

  final _i1.PrismaUnion<_i2.UserWhereInput, Iterable<_i2.UserWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringNullableFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringFilter, String>? password;

  final _i2.BotiquinListRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class MedicamentoBotiquinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoBotiquinArgs({
    this.select,
    this.include,
  });

  final _i2.BotiquinSelect? select;

  final _i2.BotiquinInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class MedicamentoInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoInclude({this.botiquin});

  final _i1.PrismaUnion<bool, _i2.MedicamentoBotiquinArgs>? botiquin;

  @override
  Map<String, dynamic> toJson() => {'botiquin': botiquin};
}

enum SortOrder implements _i1.PrismaEnum {
  asc._('asc'),
  desc._('desc');

  const SortOrder._(this.name);

  @override
  final String name;
}

class MedicamentoOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

enum NullsOrder implements _i1.PrismaEnum {
  first._('first'),
  last._('last');

  const NullsOrder._(this.name);

  @override
  final String name;
}

class SortOrderInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  final _i2.SortOrder sort;

  final _i2.NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => {
        'sort': sort,
        'nulls': nulls,
      };
}

class BotiquinOrderByRelationAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinOrderByRelationAggregateInput({this.$count});

  final _i2.SortOrder? $count;

  @override
  Map<String, dynamic> toJson() => {'_count': $count};
}

class UserOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  final _i2.SortOrder? password;

  final _i2.BotiquinOrderByRelationAggregateInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class BotiquinOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
    this.user,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? userId;

  final _i2.MedicamentoOrderByRelationAggregateInput? medicamentos;

  final _i2.UserOrderByWithRelationInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos,
        'user': user,
      };
}

class MedicamentoOrderByWithRelationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.botiquin,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? fechaVencimiento;

  final _i2.SortOrder? cantidad;

  final _i2.SortOrder? sku;

  final _i2.SortOrder? botiquinId;

  final _i2.BotiquinOrderByWithRelationInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        'botiquin': botiquin,
      };
}

class MedicamentoWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoWhereUniqueInput({
    this.id,
    this.sku,
    this.AND,
    this.OR,
    this.NOT,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.botiquinId,
    this.botiquin,
  });

  final String? id;

  final String? sku;

  final _i1.PrismaUnion<_i2.MedicamentoWhereInput,
      Iterable<_i2.MedicamentoWhereInput>>? AND;

  final Iterable<_i2.MedicamentoWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MedicamentoWhereInput,
      Iterable<_i2.MedicamentoWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fechaVencimiento;

  final _i1.PrismaUnion<_i2.IntFilter, int>? cantidad;

  final _i1.PrismaUnion<_i2.StringFilter, String>? botiquinId;

  final _i1.PrismaUnion<_i2.BotiquinRelationFilter, _i2.BotiquinWhereInput>?
      botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'SKU': sku,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'botiquinId': botiquinId,
        'botiquin': botiquin,
      };
}

enum MedicamentoScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Medicamento'),
  nombre<String>('nombre', 'Medicamento'),
  fechaVencimiento<String>('fechaVencimiento', 'Medicamento'),
  cantidad<int>('cantidad', 'Medicamento'),
  sku<String>('SKU', 'Medicamento'),
  botiquinId<String>('botiquinId', 'Medicamento');

  const MedicamentoScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class BotiquinMedicamentosArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinMedicamentosArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.MedicamentoWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.MedicamentoOrderByWithRelationInput>,
      _i2.MedicamentoOrderByWithRelationInput>? orderBy;

  final _i2.MedicamentoWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.MedicamentoScalar, Iterable<_i2.MedicamentoScalar>>?
      distinct;

  final _i2.MedicamentoSelect? select;

  final _i2.MedicamentoInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class BotiquinWhereUniqueInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinWhereUniqueInput({
    this.id,
    this.userId,
    this.AND,
    this.OR,
    this.NOT,
    this.nombre,
    this.medicamentos,
    this.user,
  });

  final String? id;

  final String? userId;

  final _i1
      .PrismaUnion<_i2.BotiquinWhereInput, Iterable<_i2.BotiquinWhereInput>>?
      AND;

  final Iterable<_i2.BotiquinWhereInput>? OR;

  final _i1
      .PrismaUnion<_i2.BotiquinWhereInput, Iterable<_i2.BotiquinWhereInput>>?
      NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i2.MedicamentoListRelationFilter? medicamentos;

  final _i1.PrismaUnion<_i2.UserRelationFilter, _i2.UserWhereInput>? user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'userId': userId,
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'nombre': nombre,
        'medicamentos': medicamentos,
        'user': user,
      };
}

enum BotiquinScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'Botiquin'),
  nombre<String>('nombre', 'Botiquin'),
  userId<String>('userId', 'Botiquin');

  const BotiquinScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class UserBotiquinArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserBotiquinArgs({
    this.where,
    this.orderBy,
    this.cursor,
    this.take,
    this.skip,
    this.distinct,
    this.select,
    this.include,
  });

  final _i2.BotiquinWhereInput? where;

  final _i1.PrismaUnion<Iterable<_i2.BotiquinOrderByWithRelationInput>,
      _i2.BotiquinOrderByWithRelationInput>? orderBy;

  final _i2.BotiquinWhereUniqueInput? cursor;

  final int? take;

  final int? skip;

  final _i1.PrismaUnion<_i2.BotiquinScalar, Iterable<_i2.BotiquinScalar>>?
      distinct;

  final _i2.BotiquinSelect? select;

  final _i2.BotiquinInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'orderBy': orderBy,
        'cursor': cursor,
        'take': take,
        'skip': skip,
        'distinct': distinct,
        'select': select,
        'include': include,
      };
}

class UserCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOutputTypeSelect({this.botiquin});

  final bool? botiquin;

  @override
  Map<String, dynamic> toJson() => {'botiquin': botiquin};
}

class UserCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountArgs({this.select});

  final _i2.UserCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserInclude({
    this.botiquin,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.UserBotiquinArgs>? botiquin;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'botiquin': botiquin,
        '_count': $count,
      };
}

class BotiquinUserArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUserArgs({
    this.select,
    this.include,
  });

  final _i2.UserSelect? select;

  final _i2.UserInclude? include;

  @override
  Map<String, dynamic> toJson() => {
        'select': select,
        'include': include,
      };
}

class BotiquinCountOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCountOutputTypeSelect({this.medicamentos});

  final bool? medicamentos;

  @override
  Map<String, dynamic> toJson() => {'medicamentos': medicamentos};
}

class BotiquinCountArgs implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCountArgs({this.select});

  final _i2.BotiquinCountOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BotiquinInclude implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinInclude({
    this.medicamentos,
    this.user,
    this.$count,
  });

  final _i1.PrismaUnion<bool, _i2.BotiquinMedicamentosArgs>? medicamentos;

  final _i1.PrismaUnion<bool, _i2.BotiquinUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.BotiquinCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'medicamentos': medicamentos,
        'user': user,
        '_count': $count,
      };
}

class MedicamentoSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoSelect({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.botiquin,
  });

  final bool? id;

  final bool? nombre;

  final bool? fechaVencimiento;

  final bool? cantidad;

  final bool? sku;

  final bool? botiquinId;

  final _i1.PrismaUnion<bool, _i2.MedicamentoBotiquinArgs>? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        'botiquin': botiquin,
      };
}

class BotiquinSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinSelect({
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
    this.user,
    this.$count,
  });

  final bool? id;

  final bool? nombre;

  final bool? userId;

  final _i1.PrismaUnion<bool, _i2.BotiquinMedicamentosArgs>? medicamentos;

  final _i1.PrismaUnion<bool, _i2.BotiquinUserArgs>? user;

  final _i1.PrismaUnion<bool, _i2.BotiquinCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos,
        'user': user,
        '_count': $count,
      };
}

class UserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserSelect({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
    this.$count,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserBotiquinArgs>? botiquin;

  final _i1.PrismaUnion<bool, _i2.UserCountArgs>? $count;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
        '_count': $count,
      };
}

enum UserScalar<T> implements _i1.PrismaEnum, _i1.Reference<T> {
  id<String>('id', 'User'),
  email<String>('email', 'User'),
  name$<String>('name', 'User'),
  password<String>('password', 'User');

  const UserScalar(
    this.name,
    this.model,
  );

  @override
  final String name;

  @override
  final String model;
}

class MedicamentoCreateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateWithoutBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoUncheckedCreateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedCreateWithoutBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoCreateOrConnectWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateOrConnectWithoutBotiquinInput({
    required this.where,
    required this.create,
  });

  final _i2.MedicamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MedicamentoCreateWithoutBotiquinInput,
      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class MedicamentoCreateManyBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateManyBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoCreateManyBotiquinInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateManyBotiquinInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.MedicamentoCreateManyBotiquinInput,
      Iterable<_i2.MedicamentoCreateManyBotiquinInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class MedicamentoCreateNestedManyWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateNestedManyWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.MedicamentoCreateWithoutBotiquinInput,
          _i1.PrismaUnion<
              Iterable<_i2.MedicamentoCreateWithoutBotiquinInput>,
              _i1.PrismaUnion<
                  _i2.MedicamentoUncheckedCreateWithoutBotiquinInput,
                  Iterable<
                      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput,
          Iterable<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput>>?
      connectOrCreate;

  final _i2.MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BotiquinCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  final String? id;

  final String? nombre;

  final _i2.MedicamentoCreateNestedManyWithoutBotiquinInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
      };
}

class MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
          _i2.MedicamentoCreateWithoutBotiquinInput,
          _i1.PrismaUnion<
              Iterable<_i2.MedicamentoCreateWithoutBotiquinInput>,
              _i1.PrismaUnion<
                  _i2.MedicamentoUncheckedCreateWithoutBotiquinInput,
                  Iterable<
                      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput,
          Iterable<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput>>?
      connectOrCreate;

  final _i2.MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class BotiquinUncheckedCreateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedCreateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  final String? id;

  final String? nombre;

  final _i2.MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput?
      medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
      };
}

class BotiquinCreateOrConnectWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  final _i2.BotiquinWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutUserInput,
      _i2.BotiquinUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BotiquinCreateManyUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateManyUserInput({
    this.id,
    this.nombre,
  });

  final String? id;

  final String? nombre;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
      };
}

class BotiquinCreateManyUserInputEnvelope
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateManyUserInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  final _i1.PrismaUnion<_i2.BotiquinCreateManyUserInput,
      Iterable<_i2.BotiquinCreateManyUserInput>> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() => {
        'data': data,
        'skipDuplicates': skipDuplicates,
      };
}

class BotiquinCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.BotiquinCreateWithoutUserInput,
      _i1.PrismaUnion<
          Iterable<_i2.BotiquinCreateWithoutUserInput>,
          _i1.PrismaUnion<_i2.BotiquinUncheckedCreateWithoutUserInput,
              Iterable<_i2.BotiquinUncheckedCreateWithoutUserInput>>>>? create;

  final _i1.PrismaUnion<_i2.BotiquinCreateOrConnectWithoutUserInput,
      Iterable<_i2.BotiquinCreateOrConnectWithoutUserInput>>? connectOrCreate;

  final _i2.BotiquinCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
    this.botiquin,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final String password;

  final _i2.BotiquinCreateNestedManyWithoutUserInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class BotiquinUncheckedCreateNestedManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedCreateNestedManyWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  final _i1.PrismaUnion<
      _i2.BotiquinCreateWithoutUserInput,
      _i1.PrismaUnion<
          Iterable<_i2.BotiquinCreateWithoutUserInput>,
          _i1.PrismaUnion<_i2.BotiquinUncheckedCreateWithoutUserInput,
              Iterable<_i2.BotiquinUncheckedCreateWithoutUserInput>>>>? create;

  final _i1.PrismaUnion<_i2.BotiquinCreateOrConnectWithoutUserInput,
      Iterable<_i2.BotiquinCreateOrConnectWithoutUserInput>>? connectOrCreate;

  final _i2.BotiquinCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'createMany': createMany,
        'connect': connect,
      };
}

class UserUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
    this.botiquin,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final String password;

  final _i2.BotiquinUncheckedCreateNestedManyWithoutUserInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class AffectedRowsOutput {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map json) =>
      AffectedRowsOutput(count: json['count']);

  final int? count;

  Map<String, dynamic> toJson() => {'count': count};
}

class UserCreateManyInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateManyInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class StringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringFieldUpdateOperationsInput({this.set});

  final String? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class NullableStringFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NullableStringFieldUpdateOperationsInput({this.set});

  final _i1.PrismaUnion<String, _i1.PrismaNull>? set;

  @override
  Map<String, dynamic> toJson() => {'set': set};
}

class IntFieldUpdateOperationsInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => {
        'set': set,
        'increment': increment,
        'decrement': decrement,
        'multiply': multiply,
        'divide': divide,
      };
}

class MedicamentoUpdateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoUncheckedUpdateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedUpdateWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.MedicamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MedicamentoUpdateWithoutBotiquinInput,
      _i2.MedicamentoUncheckedUpdateWithoutBotiquinInput> update;

  final _i1.PrismaUnion<_i2.MedicamentoCreateWithoutBotiquinInput,
      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput({
    required this.where,
    required this.data,
  });

  final _i2.MedicamentoWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.MedicamentoUpdateWithoutBotiquinInput,
      _i2.MedicamentoUncheckedUpdateWithoutBotiquinInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MedicamentoScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereInput,
      Iterable<_i2.MedicamentoScalarWhereInput>>? AND;

  final Iterable<_i2.MedicamentoScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereInput,
      Iterable<_i2.MedicamentoScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringFilter, String>? fechaVencimiento;

  final _i1.PrismaUnion<_i2.IntFilter, int>? cantidad;

  final _i1.PrismaUnion<_i2.StringFilter, String>? sku;

  final _i1.PrismaUnion<_i2.StringFilter, String>? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateManyMutationInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoUncheckedUpdateManyWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedUpdateManyWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
      };
}

class MedicamentoUpdateManyWithWhereWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateManyWithWhereWithoutBotiquinInput({
    required this.where,
    required this.data,
  });

  final _i2.MedicamentoScalarWhereInput where;

  final _i1.PrismaUnion<_i2.MedicamentoUpdateManyMutationInput,
      _i2.MedicamentoUncheckedUpdateManyWithoutBotiquinInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class MedicamentoUpdateManyWithoutBotiquinNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateManyWithoutBotiquinNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.MedicamentoCreateWithoutBotiquinInput,
          _i1.PrismaUnion<
              Iterable<_i2.MedicamentoCreateWithoutBotiquinInput>,
              _i1.PrismaUnion<
                  _i2.MedicamentoUncheckedCreateWithoutBotiquinInput,
                  Iterable<
                      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput,
          Iterable<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput>>?
      upsert;

  final _i2.MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput>>?
      update;

  final _i1.PrismaUnion<_i2.MedicamentoUpdateManyWithWhereWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpdateManyWithWhereWithoutBotiquinInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereInput,
      Iterable<_i2.MedicamentoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BotiquinUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i2.MedicamentoUpdateManyWithoutBotiquinNestedInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
      };
}

class MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
          _i2.MedicamentoCreateWithoutBotiquinInput,
          _i1.PrismaUnion<
              Iterable<_i2.MedicamentoCreateWithoutBotiquinInput>,
              _i1.PrismaUnion<
                  _i2.MedicamentoUncheckedCreateWithoutBotiquinInput,
                  Iterable<
                      _i2.MedicamentoUncheckedCreateWithoutBotiquinInput>>>>?
      create;

  final _i1.PrismaUnion<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput,
          Iterable<_i2.MedicamentoCreateOrConnectWithoutBotiquinInput>>?
      connectOrCreate;

  final _i1.PrismaUnion<
          _i2.MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput>>?
      upsert;

  final _i2.MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.MedicamentoWhereUniqueInput,
      Iterable<_i2.MedicamentoWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<
          _i2.MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput>>?
      update;

  final _i1.PrismaUnion<_i2.MedicamentoUpdateManyWithWhereWithoutBotiquinInput,
          Iterable<_i2.MedicamentoUpdateManyWithWhereWithoutBotiquinInput>>?
      updateMany;

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereInput,
      Iterable<_i2.MedicamentoScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class BotiquinUncheckedUpdateWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i2.MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput?
      medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
      };
}

class BotiquinUpsertWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpsertWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.update,
    required this.create,
  });

  final _i2.BotiquinWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithoutUserInput,
      _i2.BotiquinUncheckedUpdateWithoutUserInput> update;

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutUserInput,
      _i2.BotiquinUncheckedCreateWithoutUserInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'update': update,
        'create': create,
      };
}

class BotiquinUpdateWithWhereUniqueWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateWithWhereUniqueWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.BotiquinWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithoutUserInput,
      _i2.BotiquinUncheckedUpdateWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BotiquinScalarWhereInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinScalarWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.userId,
  });

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereInput,
      Iterable<_i2.BotiquinScalarWhereInput>>? AND;

  final Iterable<_i2.BotiquinScalarWhereInput>? OR;

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereInput,
      Iterable<_i2.BotiquinScalarWhereInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringFilter, String>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateManyMutationInput({
    this.id,
    this.nombre,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
      };
}

class BotiquinUncheckedUpdateManyWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateManyWithoutUserInput({
    this.id,
    this.nombre,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
      };
}

class BotiquinUpdateManyWithWhereWithoutUserInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateManyWithWhereWithoutUserInput({
    required this.where,
    required this.data,
  });

  final _i2.BotiquinScalarWhereInput where;

  final _i1.PrismaUnion<_i2.BotiquinUpdateManyMutationInput,
      _i2.BotiquinUncheckedUpdateManyWithoutUserInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BotiquinUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.BotiquinCreateWithoutUserInput,
      _i1.PrismaUnion<
          Iterable<_i2.BotiquinCreateWithoutUserInput>,
          _i1.PrismaUnion<_i2.BotiquinUncheckedCreateWithoutUserInput,
              Iterable<_i2.BotiquinUncheckedCreateWithoutUserInput>>>>? create;

  final _i1.PrismaUnion<_i2.BotiquinCreateOrConnectWithoutUserInput,
      Iterable<_i2.BotiquinCreateOrConnectWithoutUserInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.BotiquinUpsertWithWhereUniqueWithoutUserInput,
      Iterable<_i2.BotiquinUpsertWithWhereUniqueWithoutUserInput>>? upsert;

  final _i2.BotiquinCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithWhereUniqueWithoutUserInput,
      Iterable<_i2.BotiquinUpdateWithWhereUniqueWithoutUserInput>>? update;

  final _i1.PrismaUnion<_i2.BotiquinUpdateManyWithWhereWithoutUserInput,
      Iterable<_i2.BotiquinUpdateManyWithWhereWithoutUserInput>>? updateMany;

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereInput,
      Iterable<_i2.BotiquinScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.BotiquinUpdateManyWithoutUserNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class BotiquinUncheckedUpdateManyWithoutUserNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateManyWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.createMany,
    this.set,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
    this.updateMany,
    this.deleteMany,
  });

  final _i1.PrismaUnion<
      _i2.BotiquinCreateWithoutUserInput,
      _i1.PrismaUnion<
          Iterable<_i2.BotiquinCreateWithoutUserInput>,
          _i1.PrismaUnion<_i2.BotiquinUncheckedCreateWithoutUserInput,
              Iterable<_i2.BotiquinUncheckedCreateWithoutUserInput>>>>? create;

  final _i1.PrismaUnion<_i2.BotiquinCreateOrConnectWithoutUserInput,
      Iterable<_i2.BotiquinCreateOrConnectWithoutUserInput>>? connectOrCreate;

  final _i1.PrismaUnion<_i2.BotiquinUpsertWithWhereUniqueWithoutUserInput,
      Iterable<_i2.BotiquinUpsertWithWhereUniqueWithoutUserInput>>? upsert;

  final _i2.BotiquinCreateManyUserInputEnvelope? createMany;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? set;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? disconnect;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? delete;

  final _i1.PrismaUnion<_i2.BotiquinWhereUniqueInput,
      Iterable<_i2.BotiquinWhereUniqueInput>>? connect;

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithWhereUniqueWithoutUserInput,
      Iterable<_i2.BotiquinUpdateWithWhereUniqueWithoutUserInput>>? update;

  final _i1.PrismaUnion<_i2.BotiquinUpdateManyWithWhereWithoutUserInput,
      Iterable<_i2.BotiquinUpdateManyWithWhereWithoutUserInput>>? updateMany;

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereInput,
      Iterable<_i2.BotiquinScalarWhereInput>>? deleteMany;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'createMany': createMany,
        'set': set,
        'disconnect': disconnect,
        'delete': delete,
        'connect': connect,
        'update': update,
        'updateMany': updateMany,
        'deleteMany': deleteMany,
      };
}

class UserUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  final _i2.BotiquinUncheckedUpdateManyWithoutUserNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        'botiquin': botiquin,
      };
}

class UserUpdateManyMutationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateManyMutationInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$all,
  });

  factory UserCountAggregateOutputType.fromJson(Map json) =>
      UserCountAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        password: json['password'],
        $all: json['_all'],
      );

  final int? id;

  final int? email;

  final int? name;

  final int? password;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        '_all': $all,
      };
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMinAggregateOutputType.fromJson(Map json) =>
      UserMinAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        password: json['password'],
      );

  final String? id;

  final String? email;

  final String? name;

  final String? password;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMaxAggregateOutputType.fromJson(Map json) =>
      UserMaxAggregateOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        password: json['password'],
      );

  final String? id;

  final String? email;

  final String? name;

  final String? password;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserGroupByOutputType {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$count,
    this.$min,
    this.$max,
  });

  factory UserGroupByOutputType.fromJson(Map json) => UserGroupByOutputType(
        id: json['id'],
        email: json['email'],
        name: json['name'],
        password: json['password'],
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? email;

  final String? name;

  final String? password;

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class UserCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i2.SortOrder? name;

  final _i2.SortOrder? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? email;

  final _i1.PrismaUnion<_i2.SortOrder, _i2.SortOrderInput>? name;

  final _i2.SortOrder? password;

  final _i2.UserCountOrderByAggregateInput? $count;

  final _i2.UserMaxOrderByAggregateInput? $max;

  final _i2.UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class NestedStringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String, _i1.Reference<String>>? equals;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>? $in;

  final _i1.PrismaUnion<Iterable<String>, _i1.Reference<Iterable<String>>>?
      notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<String, _i2.NestedStringWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedStringFilter? $min;

  final _i2.NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class NestedIntNullableFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntNullableFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1
      .PrismaUnion<int, _i1.PrismaUnion<_i1.Reference<int>, _i1.PrismaNull>>?
      equals;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<int>,
      _i1.PrismaUnion<_i1.Reference<Iterable<int>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int,
      _i1.PrismaUnion<_i2.NestedIntNullableFilter, _i1.PrismaNull>>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedStringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedStringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class StringNullableWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const StringNullableWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.mode,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<String,
      _i1.PrismaUnion<_i1.Reference<String>, _i1.PrismaNull>>? equals;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? $in;

  final _i1.PrismaUnion<Iterable<String>,
      _i1.PrismaUnion<_i1.Reference<Iterable<String>>, _i1.PrismaNull>>? notIn;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? lte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gt;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? gte;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? contains;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? startsWith;

  final _i1.PrismaUnion<String, _i1.Reference<String>>? endsWith;

  final _i2.QueryMode? mode;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NestedStringNullableWithAggregatesFilter,
          _i1.PrismaNull>>? not;

  final _i2.NestedIntNullableFilter? $count;

  final _i2.NestedStringNullableFilter? $min;

  final _i2.NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'contains': contains,
        'startsWith': startsWith,
        'endsWith': endsWith,
        'mode': mode,
        'not': not,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.UserScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.UserScalarWhereWithAggregatesInput,
      Iterable<_i2.UserScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? email;

  final _i1.PrismaUnion<_i2.StringNullableWithAggregatesFilter,
      _i1.PrismaUnion<String, _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? password;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCountAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$all,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? password;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        '_all': $all,
      };
}

class UserGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMinAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserMaxAggregateOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class UserGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserGroupByOutputTypeSelect({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? email;

  final bool? name;

  final bool? password;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.UserGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateUser {
  const AggregateUser({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateUser.fromJson(Map json) => AggregateUser(
        $count: json['_count'] is Map
            ? _i2.UserCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.UserMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.UserMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.UserCountAggregateOutputType? $count;

  final _i2.UserMinAggregateOutputType? $min;

  final _i2.UserMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateUserCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserCountArgs({this.select});

  final _i2.UserCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMinArgs({this.select});

  final _i2.UserMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserMaxArgs({this.select});

  final _i2.UserMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateUserSelect implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateUserSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateUserCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateUserMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class UserCreateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateWithoutBotiquinInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserUncheckedCreateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedCreateWithoutBotiquinInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  final String? id;

  final String email;

  final _i1.PrismaUnion<String, _i1.PrismaNull>? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserCreateOrConnectWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateOrConnectWithoutBotiquinInput({
    required this.where,
    required this.create,
  });

  final _i2.UserWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.UserCreateWithoutBotiquinInput,
      _i2.UserUncheckedCreateWithoutBotiquinInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class UserCreateNestedOneWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserCreateNestedOneWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutBotiquinInput,
      _i2.UserUncheckedCreateWithoutBotiquinInput>? create;

  final _i2.UserCreateOrConnectWithoutBotiquinInput? connectOrCreate;

  final _i2.UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class BotiquinCreateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateInput({
    this.id,
    this.nombre,
    this.medicamentos,
    required this.user,
  });

  final String? id;

  final String? nombre;

  final _i2.MedicamentoCreateNestedManyWithoutBotiquinInput? medicamentos;

  final _i2.UserCreateNestedOneWithoutBotiquinInput user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
        'user': user,
      };
}

class BotiquinUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedCreateInput({
    this.id,
    this.nombre,
    required this.userId,
    this.medicamentos,
  });

  final String? id;

  final String? nombre;

  final String userId;

  final _i2.MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput?
      medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos,
      };
}

class BotiquinCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateManyInput({
    this.id,
    this.nombre,
    required this.userId,
  });

  final String? id;

  final String? nombre;

  final String userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class UserUpdateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateWithoutBotiquinInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserUncheckedUpdateWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUncheckedUpdateWithoutBotiquinInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? email;

  final _i1.PrismaUnion<
      String,
      _i1.PrismaUnion<_i2.NullableStringFieldUpdateOperationsInput,
          _i1.PrismaNull>>? name;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? password;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'password': password,
      };
}

class UserUpsertWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpsertWithoutBotiquinInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.UserUpdateWithoutBotiquinInput,
      _i2.UserUncheckedUpdateWithoutBotiquinInput> update;

  final _i1.PrismaUnion<_i2.UserCreateWithoutBotiquinInput,
      _i2.UserUncheckedCreateWithoutBotiquinInput> create;

  final _i2.UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class UserUpdateToOneWithWhereWithoutBotiquinInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateToOneWithWhereWithoutBotiquinInput({
    this.where,
    required this.data,
  });

  final _i2.UserWhereInput? where;

  final _i1.PrismaUnion<_i2.UserUpdateWithoutBotiquinInput,
      _i2.UserUncheckedUpdateWithoutBotiquinInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class UserUpdateOneRequiredWithoutBotiquinNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const UserUpdateOneRequiredWithoutBotiquinNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.UserCreateWithoutBotiquinInput,
      _i2.UserUncheckedCreateWithoutBotiquinInput>? create;

  final _i2.UserCreateOrConnectWithoutBotiquinInput? connectOrCreate;

  final _i2.UserUpsertWithoutBotiquinInput? upsert;

  final _i2.UserWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.UserUpdateToOneWithWhereWithoutBotiquinInput,
      _i1.PrismaUnion<_i2.UserUpdateWithoutBotiquinInput,
          _i2.UserUncheckedUpdateWithoutBotiquinInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class BotiquinUpdateInput implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateInput({
    this.id,
    this.nombre,
    this.medicamentos,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i2.MedicamentoUpdateManyWithoutBotiquinNestedInput? medicamentos;

  final _i2.UserUpdateOneRequiredWithoutBotiquinNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'medicamentos': medicamentos,
        'user': user,
      };
}

class BotiquinUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  final _i2.MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput?
      medicamentos;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        'medicamentos': medicamentos,
      };
}

class BotiquinUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.userId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinCountAggregateOutputType {
  const BotiquinCountAggregateOutputType({
    this.id,
    this.nombre,
    this.userId,
    this.$all,
  });

  factory BotiquinCountAggregateOutputType.fromJson(Map json) =>
      BotiquinCountAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        userId: json['userId'],
        $all: json['_all'],
      );

  final int? id;

  final int? nombre;

  final int? userId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        '_all': $all,
      };
}

class BotiquinMinAggregateOutputType {
  const BotiquinMinAggregateOutputType({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinMinAggregateOutputType.fromJson(Map json) =>
      BotiquinMinAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        userId: json['userId'],
      );

  final String? id;

  final String? nombre;

  final String? userId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinMaxAggregateOutputType {
  const BotiquinMaxAggregateOutputType({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinMaxAggregateOutputType.fromJson(Map json) =>
      BotiquinMaxAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        userId: json['userId'],
      );

  final String? id;

  final String? nombre;

  final String? userId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinGroupByOutputType {
  const BotiquinGroupByOutputType({
    this.id,
    this.nombre,
    this.userId,
    this.$count,
    this.$min,
    this.$max,
  });

  factory BotiquinGroupByOutputType.fromJson(Map json) =>
      BotiquinGroupByOutputType(
        id: json['id'],
        nombre: json['nombre'],
        userId: json['userId'],
        $count: json['_count'] is Map
            ? _i2.BotiquinCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BotiquinMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BotiquinMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? nombre;

  final String? userId;

  final _i2.BotiquinCountAggregateOutputType? $count;

  final _i2.BotiquinMinAggregateOutputType? $min;

  final _i2.BotiquinMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class BotiquinCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.userId,
    this.$count,
    this.$max,
    this.$min,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? userId;

  final _i2.BotiquinCountOrderByAggregateInput? $count;

  final _i2.BotiquinMaxOrderByAggregateInput? $max;

  final _i2.BotiquinMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        '_count': $count,
        '_max': $max,
        '_min': $min,
      };
}

class BotiquinScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.userId,
  });

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereWithAggregatesInput,
      Iterable<_i2.BotiquinScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.BotiquinScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.BotiquinScalarWhereWithAggregatesInput,
      Iterable<_i2.BotiquinScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCountAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.userId,
    this.$all,
  });

  final bool? id;

  final bool? nombre;

  final bool? userId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        '_all': $all,
      };
}

class BotiquinGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinGroupByOutputTypeCountArgs({this.select});

  final _i2.BotiquinCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BotiquinMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinMinAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.userId,
  });

  final bool? id;

  final bool? nombre;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinGroupByOutputTypeMinArgs({this.select});

  final _i2.BotiquinMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BotiquinMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinMaxAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.userId,
  });

  final bool? id;

  final bool? nombre;

  final bool? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinGroupByOutputTypeMaxArgs({this.select});

  final _i2.BotiquinMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class BotiquinGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinGroupByOutputTypeSelect({
    this.id,
    this.nombre,
    this.userId,
    this.$count,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? nombre;

  final bool? userId;

  final _i1.PrismaUnion<bool, _i2.BotiquinGroupByOutputTypeCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.BotiquinGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.BotiquinGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateBotiquin {
  const AggregateBotiquin({
    this.$count,
    this.$min,
    this.$max,
  });

  factory AggregateBotiquin.fromJson(Map json) => AggregateBotiquin(
        $count: json['_count'] is Map
            ? _i2.BotiquinCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $min: json['_min'] is Map
            ? _i2.BotiquinMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.BotiquinMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.BotiquinCountAggregateOutputType? $count;

  final _i2.BotiquinMinAggregateOutputType? $min;

  final _i2.BotiquinMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateBotiquinCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBotiquinCountArgs({this.select});

  final _i2.BotiquinCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBotiquinMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBotiquinMinArgs({this.select});

  final _i2.BotiquinMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBotiquinMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBotiquinMaxArgs({this.select});

  final _i2.BotiquinMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateBotiquinSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateBotiquinSelect({
    this.$count,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateBotiquinCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateBotiquinMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateBotiquinMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_min': $min,
        '_max': $max,
      };
}

class BotiquinCreateWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    required this.user,
  });

  final String? id;

  final String? nombre;

  final _i2.UserCreateNestedOneWithoutBotiquinInput user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'user': user,
      };
}

class BotiquinUncheckedCreateWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedCreateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    required this.userId,
  });

  final String? id;

  final String? nombre;

  final String userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinCreateOrConnectWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateOrConnectWithoutMedicamentosInput({
    required this.where,
    required this.create,
  });

  final _i2.BotiquinWhereUniqueInput where;

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedCreateWithoutMedicamentosInput> create;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'create': create,
      };
}

class BotiquinCreateNestedOneWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinCreateNestedOneWithoutMedicamentosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedCreateWithoutMedicamentosInput>? create;

  final _i2.BotiquinCreateOrConnectWithoutMedicamentosInput? connectOrCreate;

  final _i2.BotiquinWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'connect': connect,
      };
}

class MedicamentoCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquin,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  final _i2.BotiquinCreateNestedOneWithoutMedicamentosInput botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquin': botiquin,
      };
}

class MedicamentoUncheckedCreateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquinId,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  final String botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoCreateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCreateManyInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquinId,
  });

  final String? id;

  final String nombre;

  final String fechaVencimiento;

  final int cantidad;

  final String sku;

  final String botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class BotiquinUpdateWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    this.user,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i2.UserUpdateOneRequiredWithoutBotiquinNestedInput? user;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'user': user,
      };
}

class BotiquinUncheckedUpdateWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUncheckedUpdateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    this.userId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? userId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'userId': userId,
      };
}

class BotiquinUpsertWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpsertWithoutMedicamentosInput({
    required this.update,
    required this.create,
    this.where,
  });

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedUpdateWithoutMedicamentosInput> update;

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedCreateWithoutMedicamentosInput> create;

  final _i2.BotiquinWhereInput? where;

  @override
  Map<String, dynamic> toJson() => {
        'update': update,
        'create': create,
        'where': where,
      };
}

class BotiquinUpdateToOneWithWhereWithoutMedicamentosInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateToOneWithWhereWithoutMedicamentosInput({
    this.where,
    required this.data,
  });

  final _i2.BotiquinWhereInput? where;

  final _i1.PrismaUnion<_i2.BotiquinUpdateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedUpdateWithoutMedicamentosInput> data;

  @override
  Map<String, dynamic> toJson() => {
        'where': where,
        'data': data,
      };
}

class BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  final _i1.PrismaUnion<_i2.BotiquinCreateWithoutMedicamentosInput,
      _i2.BotiquinUncheckedCreateWithoutMedicamentosInput>? create;

  final _i2.BotiquinCreateOrConnectWithoutMedicamentosInput? connectOrCreate;

  final _i2.BotiquinUpsertWithoutMedicamentosInput? upsert;

  final _i2.BotiquinWhereUniqueInput? connect;

  final _i1.PrismaUnion<
      _i2.BotiquinUpdateToOneWithWhereWithoutMedicamentosInput,
      _i1.PrismaUnion<_i2.BotiquinUpdateWithoutMedicamentosInput,
          _i2.BotiquinUncheckedUpdateWithoutMedicamentosInput>>? update;

  @override
  Map<String, dynamic> toJson() => {
        'create': create,
        'connectOrCreate': connectOrCreate,
        'upsert': upsert,
        'connect': connect,
        'update': update,
      };
}

class MedicamentoUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUpdateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquin,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  final _i2.BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquin': botiquin,
      };
}

class MedicamentoUncheckedUpdateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoUncheckedUpdateManyInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? id;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? nombre;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      fechaVencimiento;

  final _i1.PrismaUnion<int, _i2.IntFieldUpdateOperationsInput>? cantidad;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>? sku;

  final _i1.PrismaUnion<String, _i2.StringFieldUpdateOperationsInput>?
      botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoCountAggregateOutputType {
  const MedicamentoCountAggregateOutputType({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.$all,
  });

  factory MedicamentoCountAggregateOutputType.fromJson(Map json) =>
      MedicamentoCountAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        fechaVencimiento: json['fechaVencimiento'],
        cantidad: json['cantidad'],
        sku: json['SKU'],
        botiquinId: json['botiquinId'],
        $all: json['_all'],
      );

  final int? id;

  final int? nombre;

  final int? fechaVencimiento;

  final int? cantidad;

  final int? sku;

  final int? botiquinId;

  final int? $all;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        '_all': $all,
      };
}

class MedicamentoAvgAggregateOutputType {
  const MedicamentoAvgAggregateOutputType({this.cantidad});

  factory MedicamentoAvgAggregateOutputType.fromJson(Map json) =>
      MedicamentoAvgAggregateOutputType(cantidad: json['cantidad']);

  final double? cantidad;

  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoSumAggregateOutputType {
  const MedicamentoSumAggregateOutputType({this.cantidad});

  factory MedicamentoSumAggregateOutputType.fromJson(Map json) =>
      MedicamentoSumAggregateOutputType(cantidad: json['cantidad']);

  final int? cantidad;

  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoMinAggregateOutputType {
  const MedicamentoMinAggregateOutputType({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoMinAggregateOutputType.fromJson(Map json) =>
      MedicamentoMinAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        fechaVencimiento: json['fechaVencimiento'],
        cantidad: json['cantidad'],
        sku: json['SKU'],
        botiquinId: json['botiquinId'],
      );

  final String? id;

  final String? nombre;

  final String? fechaVencimiento;

  final int? cantidad;

  final String? sku;

  final String? botiquinId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoMaxAggregateOutputType {
  const MedicamentoMaxAggregateOutputType({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoMaxAggregateOutputType.fromJson(Map json) =>
      MedicamentoMaxAggregateOutputType(
        id: json['id'],
        nombre: json['nombre'],
        fechaVencimiento: json['fechaVencimiento'],
        cantidad: json['cantidad'],
        sku: json['SKU'],
        botiquinId: json['botiquinId'],
      );

  final String? id;

  final String? nombre;

  final String? fechaVencimiento;

  final int? cantidad;

  final String? sku;

  final String? botiquinId;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoGroupByOutputType {
  const MedicamentoGroupByOutputType({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory MedicamentoGroupByOutputType.fromJson(Map json) =>
      MedicamentoGroupByOutputType(
        id: json['id'],
        nombre: json['nombre'],
        fechaVencimiento: json['fechaVencimiento'],
        cantidad: json['cantidad'],
        sku: json['SKU'],
        botiquinId: json['botiquinId'],
        $count: json['_count'] is Map
            ? _i2.MedicamentoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MedicamentoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MedicamentoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MedicamentoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MedicamentoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final String? id;

  final String? nombre;

  final String? fechaVencimiento;

  final int? cantidad;

  final String? sku;

  final String? botiquinId;

  final _i2.MedicamentoCountAggregateOutputType? $count;

  final _i2.MedicamentoAvgAggregateOutputType? $avg;

  final _i2.MedicamentoSumAggregateOutputType? $sum;

  final _i2.MedicamentoMinAggregateOutputType? $min;

  final _i2.MedicamentoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class MedicamentoCountOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? fechaVencimiento;

  final _i2.SortOrder? cantidad;

  final _i2.SortOrder? sku;

  final _i2.SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoAvgOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoAvgOrderByAggregateInput({this.cantidad});

  final _i2.SortOrder? cantidad;

  @override
  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoMaxOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? fechaVencimiento;

  final _i2.SortOrder? cantidad;

  final _i2.SortOrder? sku;

  final _i2.SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoMinOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? fechaVencimiento;

  final _i2.SortOrder? cantidad;

  final _i2.SortOrder? sku;

  final _i2.SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoSumOrderByAggregateInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoSumOrderByAggregateInput({this.cantidad});

  final _i2.SortOrder? cantidad;

  @override
  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoOrderByWithAggregationInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.$count,
    this.$avg,
    this.$max,
    this.$min,
    this.$sum,
  });

  final _i2.SortOrder? id;

  final _i2.SortOrder? nombre;

  final _i2.SortOrder? fechaVencimiento;

  final _i2.SortOrder? cantidad;

  final _i2.SortOrder? sku;

  final _i2.SortOrder? botiquinId;

  final _i2.MedicamentoCountOrderByAggregateInput? $count;

  final _i2.MedicamentoAvgOrderByAggregateInput? $avg;

  final _i2.MedicamentoMaxOrderByAggregateInput? $max;

  final _i2.MedicamentoMinOrderByAggregateInput? $min;

  final _i2.MedicamentoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        '_count': $count,
        '_avg': $avg,
        '_max': $max,
        '_min': $min,
        '_sum': $sum,
      };
}

class NestedFloatFilter implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedFloatFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  final _i1.PrismaUnion<double, _i1.Reference<double>>? equals;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>? $in;

  final _i1.PrismaUnion<Iterable<double>, _i1.Reference<Iterable<double>>>?
      notIn;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? lte;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gt;

  final _i1.PrismaUnion<double, _i1.Reference<double>>? gte;

  final _i1.PrismaUnion<double, _i2.NestedFloatFilter>? not;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
      };
}

class NestedIntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const NestedIntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class IntWithAggregatesFilter
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const IntWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<int, _i1.Reference<int>>? equals;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? $in;

  final _i1.PrismaUnion<Iterable<int>, _i1.Reference<Iterable<int>>>? notIn;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? lte;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gt;

  final _i1.PrismaUnion<int, _i1.Reference<int>>? gte;

  final _i1.PrismaUnion<int, _i2.NestedIntWithAggregatesFilter>? not;

  final _i2.NestedIntFilter? $count;

  final _i2.NestedFloatFilter? $avg;

  final _i2.NestedIntFilter? $sum;

  final _i2.NestedIntFilter? $min;

  final _i2.NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => {
        'equals': equals,
        'in': $in,
        'notIn': notIn,
        'lt': lt,
        'lte': lte,
        'gt': gt,
        'gte': gte,
        'not': not,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class MedicamentoScalarWhereWithAggregatesInput
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereWithAggregatesInput,
      Iterable<_i2.MedicamentoScalarWhereWithAggregatesInput>>? AND;

  final Iterable<_i2.MedicamentoScalarWhereWithAggregatesInput>? OR;

  final _i1.PrismaUnion<_i2.MedicamentoScalarWhereWithAggregatesInput,
      Iterable<_i2.MedicamentoScalarWhereWithAggregatesInput>>? NOT;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? id;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? nombre;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>?
      fechaVencimiento;

  final _i1.PrismaUnion<_i2.IntWithAggregatesFilter, int>? cantidad;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? sku;

  final _i1.PrismaUnion<_i2.StringWithAggregatesFilter, String>? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'AND': AND,
        'OR': OR,
        'NOT': NOT,
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoCountAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoCountAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.$all,
  });

  final bool? id;

  final bool? nombre;

  final bool? fechaVencimiento;

  final bool? cantidad;

  final bool? sku;

  final bool? botiquinId;

  final bool? $all;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        '_all': $all,
      };
}

class MedicamentoGroupByOutputTypeCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeCountArgs({this.select});

  final _i2.MedicamentoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MedicamentoAvgAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoAvgAggregateOutputTypeSelect({this.cantidad});

  final bool? cantidad;

  @override
  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoGroupByOutputTypeAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeAvgArgs({this.select});

  final _i2.MedicamentoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MedicamentoSumAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoSumAggregateOutputTypeSelect({this.cantidad});

  final bool? cantidad;

  @override
  Map<String, dynamic> toJson() => {'cantidad': cantidad};
}

class MedicamentoGroupByOutputTypeSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeSumArgs({this.select});

  final _i2.MedicamentoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MedicamentoMinAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoMinAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final bool? id;

  final bool? nombre;

  final bool? fechaVencimiento;

  final bool? cantidad;

  final bool? sku;

  final bool? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoGroupByOutputTypeMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeMinArgs({this.select});

  final _i2.MedicamentoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MedicamentoMaxAggregateOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoMaxAggregateOutputTypeSelect({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  final bool? id;

  final bool? nombre;

  final bool? fechaVencimiento;

  final bool? cantidad;

  final bool? sku;

  final bool? botiquinId;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
      };
}

class MedicamentoGroupByOutputTypeMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeMaxArgs({this.select});

  final _i2.MedicamentoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class MedicamentoGroupByOutputTypeSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const MedicamentoGroupByOutputTypeSelect({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final bool? id;

  final bool? nombre;

  final bool? fechaVencimiento;

  final bool? cantidad;

  final bool? sku;

  final bool? botiquinId;

  final _i1.PrismaUnion<bool, _i2.MedicamentoGroupByOutputTypeCountArgs>?
      $count;

  final _i1.PrismaUnion<bool, _i2.MedicamentoGroupByOutputTypeAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.MedicamentoGroupByOutputTypeSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.MedicamentoGroupByOutputTypeMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.MedicamentoGroupByOutputTypeMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'nombre': nombre,
        'fechaVencimiento': fechaVencimiento,
        'cantidad': cantidad,
        'SKU': sku,
        'botiquinId': botiquinId,
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}

class AggregateMedicamento {
  const AggregateMedicamento({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  factory AggregateMedicamento.fromJson(Map json) => AggregateMedicamento(
        $count: json['_count'] is Map
            ? _i2.MedicamentoCountAggregateOutputType.fromJson(json['_count'])
            : null,
        $avg: json['_avg'] is Map
            ? _i2.MedicamentoAvgAggregateOutputType.fromJson(json['_avg'])
            : null,
        $sum: json['_sum'] is Map
            ? _i2.MedicamentoSumAggregateOutputType.fromJson(json['_sum'])
            : null,
        $min: json['_min'] is Map
            ? _i2.MedicamentoMinAggregateOutputType.fromJson(json['_min'])
            : null,
        $max: json['_max'] is Map
            ? _i2.MedicamentoMaxAggregateOutputType.fromJson(json['_max'])
            : null,
      );

  final _i2.MedicamentoCountAggregateOutputType? $count;

  final _i2.MedicamentoAvgAggregateOutputType? $avg;

  final _i2.MedicamentoSumAggregateOutputType? $sum;

  final _i2.MedicamentoMinAggregateOutputType? $min;

  final _i2.MedicamentoMaxAggregateOutputType? $max;

  Map<String, dynamic> toJson() => {
        '_count': $count?.toJson(),
        '_avg': $avg?.toJson(),
        '_sum': $sum?.toJson(),
        '_min': $min?.toJson(),
        '_max': $max?.toJson(),
      };
}

class AggregateMedicamentoCountArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoCountArgs({this.select});

  final _i2.MedicamentoCountAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMedicamentoAvgArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoAvgArgs({this.select});

  final _i2.MedicamentoAvgAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMedicamentoSumArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoSumArgs({this.select});

  final _i2.MedicamentoSumAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMedicamentoMinArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoMinArgs({this.select});

  final _i2.MedicamentoMinAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMedicamentoMaxArgs
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoMaxArgs({this.select});

  final _i2.MedicamentoMaxAggregateOutputTypeSelect? select;

  @override
  Map<String, dynamic> toJson() => {'select': select};
}

class AggregateMedicamentoSelect
    implements _i1.JsonConvertible<Map<String, dynamic>> {
  const AggregateMedicamentoSelect({
    this.$count,
    this.$avg,
    this.$sum,
    this.$min,
    this.$max,
  });

  final _i1.PrismaUnion<bool, _i2.AggregateMedicamentoCountArgs>? $count;

  final _i1.PrismaUnion<bool, _i2.AggregateMedicamentoAvgArgs>? $avg;

  final _i1.PrismaUnion<bool, _i2.AggregateMedicamentoSumArgs>? $sum;

  final _i1.PrismaUnion<bool, _i2.AggregateMedicamentoMinArgs>? $min;

  final _i1.PrismaUnion<bool, _i2.AggregateMedicamentoMaxArgs>? $max;

  @override
  Map<String, dynamic> toJson() => {
        '_count': $count,
        '_avg': $avg,
        '_sum': $sum,
        '_min': $min,
        '_max': $max,
      };
}
