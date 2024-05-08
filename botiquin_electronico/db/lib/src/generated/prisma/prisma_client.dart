// ignore_for_file: invalid_use_of_internal_member

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  email,
  name,
  password;

  @override
  String? get originalName => null;
}

enum BotiquinScalarFieldEnum implements _i1.PrismaEnum {
  id,
  nombre,
  userId;

  @override
  String? get originalName => null;
}

enum MedicamentoScalarFieldEnum implements _i1.PrismaEnum {
  id,
  nombre,
  fechaVencimiento,
  cantidad,
  @JsonValue('SKU')
  sku(r'SKU'),
  botiquinId;

  const MedicamentoScalarFieldEnum([this.originalName]);

  @override
  final String? originalName;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

enum QueryMode implements _i1.PrismaEnum {
  @JsonValue('default')
  $default(r'default'),
  insensitive;

  const QueryMode([this.originalName]);

  @override
  final String? originalName;
}

enum NullsOrder implements _i1.PrismaEnum {
  first,
  last;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
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

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? email;

  final StringNullableFilter? name;

  final StringFilter? password;

  final BotiquinNullableRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  final BotiquinOrderByWithRelationInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
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

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final String? id;

  final String? email;

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringNullableFilter? name;

  final StringFilter? password;

  final BotiquinNullableRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? email;

  final StringNullableWithAggregatesFilter? name;

  final StringWithAggregatesFilter? password;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinWhereInput implements _i1.JsonSerializable {
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

  factory BotiquinWhereInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinWhereInputFromJson(json);

  final Iterable<BotiquinWhereInput>? AND;

  final Iterable<BotiquinWhereInput>? OR;

  final Iterable<BotiquinWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? nombre;

  final StringFilter? userId;

  final MedicamentoListRelationFilter? medicamentos;

  final UserRelationFilter? user;

  @override
  Map<String, dynamic> toJson() => _$BotiquinWhereInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinOrderByWithRelationInput implements _i1.JsonSerializable {
  const BotiquinOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
    this.user,
  });

  factory BotiquinOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? userId;

  final MedicamentoOrderByRelationAggregateInput? medicamentos;

  final UserOrderByWithRelationInput? user;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinWhereUniqueInput implements _i1.JsonSerializable {
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

  factory BotiquinWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinWhereUniqueInputFromJson(json);

  final String? id;

  final String? userId;

  final Iterable<BotiquinWhereInput>? AND;

  final Iterable<BotiquinWhereInput>? OR;

  final Iterable<BotiquinWhereInput>? NOT;

  final StringFilter? nombre;

  final MedicamentoListRelationFilter? medicamentos;

  final UserRelationFilter? user;

  @override
  Map<String, dynamic> toJson() => _$BotiquinWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinOrderByWithAggregationInput implements _i1.JsonSerializable {
  const BotiquinOrderByWithAggregationInput({
    this.id,
    this.nombre,
    this.userId,
    this.$count,
    this.$max,
    this.$min,
  });

  factory BotiquinOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? userId;

  @JsonKey(name: r'_count')
  final BotiquinCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final BotiquinMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final BotiquinMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const BotiquinScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<BotiquinScalarWhereWithAggregatesInput>? AND;

  final Iterable<BotiquinScalarWhereWithAggregatesInput>? OR;

  final Iterable<BotiquinScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? nombre;

  final StringWithAggregatesFilter? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoWhereInput implements _i1.JsonSerializable {
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

  factory MedicamentoWhereInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoWhereInputFromJson(json);

  final Iterable<MedicamentoWhereInput>? AND;

  final Iterable<MedicamentoWhereInput>? OR;

  final Iterable<MedicamentoWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? nombre;

  final DateTimeFilter? fechaVencimiento;

  final IntFilter? cantidad;

  @JsonKey(name: r'SKU')
  final StringFilter? sku;

  final StringFilter? botiquinId;

  final BotiquinRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoWhereInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoOrderByWithRelationInput implements _i1.JsonSerializable {
  const MedicamentoOrderByWithRelationInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
    this.botiquin,
  });

  factory MedicamentoOrderByWithRelationInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? fechaVencimiento;

  final SortOrder? cantidad;

  @JsonKey(name: r'SKU')
  final SortOrder? sku;

  final SortOrder? botiquinId;

  final BotiquinOrderByWithRelationInput? botiquin;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoWhereUniqueInput implements _i1.JsonSerializable {
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

  factory MedicamentoWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoWhereUniqueInputFromJson(json);

  final String? id;

  @JsonKey(name: r'SKU')
  final String? sku;

  final Iterable<MedicamentoWhereInput>? AND;

  final Iterable<MedicamentoWhereInput>? OR;

  final Iterable<MedicamentoWhereInput>? NOT;

  final StringFilter? nombre;

  final DateTimeFilter? fechaVencimiento;

  final IntFilter? cantidad;

  final StringFilter? botiquinId;

  final BotiquinRelationFilter? botiquin;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoOrderByWithAggregationInput implements _i1.JsonSerializable {
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

  factory MedicamentoOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? fechaVencimiento;

  final SortOrder? cantidad;

  @JsonKey(name: r'SKU')
  final SortOrder? sku;

  final SortOrder? botiquinId;

  @JsonKey(name: r'_count')
  final MedicamentoCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_avg')
  final MedicamentoAvgOrderByAggregateInput? $avg;

  @JsonKey(name: r'_max')
  final MedicamentoMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final MedicamentoMinOrderByAggregateInput? $min;

  @JsonKey(name: r'_sum')
  final MedicamentoSumOrderByAggregateInput? $sum;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoScalarWhereWithAggregatesInput
    implements _i1.JsonSerializable {
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

  factory MedicamentoScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<MedicamentoScalarWhereWithAggregatesInput>? AND;

  final Iterable<MedicamentoScalarWhereWithAggregatesInput>? OR;

  final Iterable<MedicamentoScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? nombre;

  final DateTimeWithAggregatesFilter? fechaVencimiento;

  final IntWithAggregatesFilter? cantidad;

  @JsonKey(name: r'SKU')
  final StringWithAggregatesFilter? sku;

  final StringWithAggregatesFilter? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
    this.botiquin,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String? id;

  final String email;

  final String? name;

  final String password;

  final BotiquinCreateNestedOneWithoutUserInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
    this.botiquin,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final String? id;

  final String email;

  final String? name;

  final String password;

  final BotiquinUncheckedCreateNestedOneWithoutUserInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  final BotiquinUpdateOneWithoutUserNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.email,
    this.name,
    this.password,
    this.botiquin,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  final BotiquinUncheckedUpdateOneWithoutUserNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final String? id;

  final String email;

  final String? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateInput implements _i1.JsonSerializable {
  const BotiquinCreateInput({
    this.id,
    required this.nombre,
    this.medicamentos,
    required this.user,
  });

  factory BotiquinCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinCreateInputFromJson(json);

  final String? id;

  final String nombre;

  final MedicamentoCreateNestedManyWithoutBotiquinInput? medicamentos;

  final UserCreateNestedOneWithoutBotiquinInput user;

  @override
  Map<String, dynamic> toJson() => _$BotiquinCreateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedCreateInput implements _i1.JsonSerializable {
  const BotiquinUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.userId,
    this.medicamentos,
  });

  factory BotiquinUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUncheckedCreateInputFromJson(json);

  final String? id;

  final String nombre;

  final String userId;

  final MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => _$BotiquinUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateInput implements _i1.JsonSerializable {
  const BotiquinUpdateInput({
    this.id,
    this.nombre,
    this.medicamentos,
    this.user,
  });

  factory BotiquinUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final MedicamentoUpdateManyWithoutBotiquinNestedInput? medicamentos;

  final UserUpdateOneRequiredWithoutBotiquinNestedInput? user;

  @override
  Map<String, dynamic> toJson() => _$BotiquinUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedUpdateInput implements _i1.JsonSerializable {
  const BotiquinUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.userId,
    this.medicamentos,
  });

  factory BotiquinUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? userId;

  final MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => _$BotiquinUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateManyInput implements _i1.JsonSerializable {
  const BotiquinCreateManyInput({
    this.id,
    required this.nombre,
    required this.userId,
  });

  factory BotiquinCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinCreateManyInputFromJson(json);

  final String? id;

  final String nombre;

  final String userId;

  @override
  Map<String, dynamic> toJson() => _$BotiquinCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateManyMutationInput implements _i1.JsonSerializable {
  const BotiquinUpdateManyMutationInput({
    this.id,
    this.nombre,
  });

  factory BotiquinUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const BotiquinUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateInput implements _i1.JsonSerializable {
  const MedicamentoCreateInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquin,
  });

  factory MedicamentoCreateInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoCreateInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  final BotiquinCreateNestedOneWithoutMedicamentosInput botiquin;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoCreateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedCreateInput implements _i1.JsonSerializable {
  const MedicamentoUncheckedCreateInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquinId,
  });

  factory MedicamentoUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoUncheckedCreateInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  final String botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateInput implements _i1.JsonSerializable {
  const MedicamentoUpdateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquin,
  });

  factory MedicamentoUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  final BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput? botiquin;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoUpdateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedUpdateInput implements _i1.JsonSerializable {
  const MedicamentoUncheckedUpdateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  final StringFieldUpdateOperationsInput? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateManyInput implements _i1.JsonSerializable {
  const MedicamentoCreateManyInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquinId,
  });

  factory MedicamentoCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoCreateManyInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  final String botiquinId;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateManyMutationInput implements _i1.JsonSerializable {
  const MedicamentoUpdateManyMutationInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  factory MedicamentoUpdateManyMutationInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const MedicamentoUncheckedUpdateManyInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoUncheckedUpdateManyInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  final StringFieldUpdateOperationsInput? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
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

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableFilter implements _i1.JsonSerializable {
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

  factory StringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$StringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class BotiquinNullableRelationFilter implements _i1.JsonSerializable {
  const BotiquinNullableRelationFilter({
    this.$is,
    this.isNot,
  });

  factory BotiquinNullableRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$BotiquinNullableRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final BotiquinWhereInput? $is;

  final BotiquinWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$BotiquinNullableRelationFilterToJson(this);
}

@_i1.jsonSerializable
class SortOrderInput implements _i1.JsonSerializable {
  const SortOrderInput({
    required this.sort,
    this.nulls,
  });

  factory SortOrderInput.fromJson(Map<String, dynamic> json) =>
      _$SortOrderInputFromJson(json);

  final SortOrder sort;

  final NullsOrder? nulls;

  @override
  Map<String, dynamic> toJson() => _$SortOrderInputToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? email;

  final SortOrder? name;

  final SortOrder? password;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class StringNullableWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory StringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$StringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final QueryMode? mode;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$StringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class MedicamentoListRelationFilter implements _i1.JsonSerializable {
  const MedicamentoListRelationFilter({
    this.every,
    this.some,
    this.none,
  });

  factory MedicamentoListRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoListRelationFilterFromJson(json);

  final MedicamentoWhereInput? every;

  final MedicamentoWhereInput? some;

  final MedicamentoWhereInput? none;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoListRelationFilterToJson(this);
}

@_i1.jsonSerializable
class UserRelationFilter implements _i1.JsonSerializable {
  const UserRelationFilter({
    this.$is,
    this.isNot,
  });

  factory UserRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$UserRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final UserWhereInput? $is;

  final UserWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$UserRelationFilterToJson(this);
}

@_i1.jsonSerializable
class MedicamentoOrderByRelationAggregateInput implements _i1.JsonSerializable {
  const MedicamentoOrderByRelationAggregateInput({this.$count});

  factory MedicamentoOrderByRelationAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoOrderByRelationAggregateInputFromJson(json);

  @JsonKey(name: r'_count')
  final SortOrder? $count;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoOrderByRelationAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCountOrderByAggregateInput implements _i1.JsonSerializable {
  const BotiquinCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const BotiquinMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinMinOrderByAggregateInput implements _i1.JsonSerializable {
  const BotiquinMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class IntFilter implements _i1.JsonSerializable {
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

  factory IntFilter.fromJson(Map<String, dynamic> json) =>
      _$IntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$IntFilterToJson(this);
}

@_i1.jsonSerializable
class BotiquinRelationFilter implements _i1.JsonSerializable {
  const BotiquinRelationFilter({
    this.$is,
    this.isNot,
  });

  factory BotiquinRelationFilter.fromJson(Map<String, dynamic> json) =>
      _$BotiquinRelationFilterFromJson(json);

  @JsonKey(name: r'is')
  final BotiquinWhereInput? $is;

  final BotiquinWhereInput? isNot;

  @override
  Map<String, dynamic> toJson() => _$BotiquinRelationFilterToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCountOrderByAggregateInput implements _i1.JsonSerializable {
  const MedicamentoCountOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? fechaVencimiento;

  final SortOrder? cantidad;

  @JsonKey(name: r'SKU')
  final SortOrder? sku;

  final SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoAvgOrderByAggregateInput implements _i1.JsonSerializable {
  const MedicamentoAvgOrderByAggregateInput({this.cantidad});

  factory MedicamentoAvgOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoAvgOrderByAggregateInputFromJson(json);

  final SortOrder? cantidad;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoAvgOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const MedicamentoMaxOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoMaxOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? fechaVencimiento;

  final SortOrder? cantidad;

  @JsonKey(name: r'SKU')
  final SortOrder? sku;

  final SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoMinOrderByAggregateInput implements _i1.JsonSerializable {
  const MedicamentoMinOrderByAggregateInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoMinOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? nombre;

  final SortOrder? fechaVencimiento;

  final SortOrder? cantidad;

  @JsonKey(name: r'SKU')
  final SortOrder? sku;

  final SortOrder? botiquinId;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoSumOrderByAggregateInput implements _i1.JsonSerializable {
  const MedicamentoSumOrderByAggregateInput({this.cantidad});

  factory MedicamentoSumOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoSumOrderByAggregateInputFromJson(json);

  final SortOrder? cantidad;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoSumOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class IntWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory IntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$IntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$IntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateNestedOneWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory BotiquinCreateNestedOneWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCreateNestedOneWithoutUserInputFromJson(json);

  final BotiquinCreateWithoutUserInput? create;

  final BotiquinCreateOrConnectWithoutUserInput? connectOrCreate;

  final BotiquinWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCreateNestedOneWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedCreateNestedOneWithoutUserInput
    implements _i1.JsonSerializable {
  const BotiquinUncheckedCreateNestedOneWithoutUserInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory BotiquinUncheckedCreateNestedOneWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedCreateNestedOneWithoutUserInputFromJson(json);

  final BotiquinCreateWithoutUserInput? create;

  final BotiquinCreateOrConnectWithoutUserInput? connectOrCreate;

  final BotiquinWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedCreateNestedOneWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NullableStringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const NullableStringFieldUpdateOperationsInput({this.set});

  factory NullableStringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$NullableStringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$NullableStringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateOneWithoutUserNestedInput implements _i1.JsonSerializable {
  const BotiquinUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory BotiquinUpdateOneWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpdateOneWithoutUserNestedInputFromJson(json);

  final BotiquinCreateWithoutUserInput? create;

  final BotiquinCreateOrConnectWithoutUserInput? connectOrCreate;

  final BotiquinUpsertWithoutUserInput? upsert;

  final BotiquinWhereInput? disconnect;

  final BotiquinWhereInput? delete;

  final BotiquinWhereUniqueInput? connect;

  final BotiquinUpdateToOneWithWhereWithoutUserInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateOneWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedUpdateOneWithoutUserNestedInput
    implements _i1.JsonSerializable {
  const BotiquinUncheckedUpdateOneWithoutUserNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.disconnect,
    this.delete,
    this.connect,
    this.update,
  });

  factory BotiquinUncheckedUpdateOneWithoutUserNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedUpdateOneWithoutUserNestedInputFromJson(json);

  final BotiquinCreateWithoutUserInput? create;

  final BotiquinCreateOrConnectWithoutUserInput? connectOrCreate;

  final BotiquinUpsertWithoutUserInput? upsert;

  final BotiquinWhereInput? disconnect;

  final BotiquinWhereInput? delete;

  final BotiquinWhereUniqueInput? connect;

  final BotiquinUpdateToOneWithWhereWithoutUserInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedUpdateOneWithoutUserNestedInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateNestedManyWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoCreateNestedManyWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory MedicamentoCreateNestedManyWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCreateNestedManyWithoutBotiquinInputFromJson(json);

  final Iterable<MedicamentoCreateWithoutBotiquinInput>? create;

  final Iterable<MedicamentoCreateOrConnectWithoutBotiquinInput>?
      connectOrCreate;

  final MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final Iterable<MedicamentoWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCreateNestedManyWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateNestedOneWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserCreateNestedOneWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory UserCreateNestedOneWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateNestedOneWithoutBotiquinInputFromJson(json);

  final UserCreateWithoutBotiquinInput? create;

  final UserCreateOrConnectWithoutBotiquinInput? connectOrCreate;

  final UserWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateNestedOneWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput({
    this.create,
    this.connectOrCreate,
    this.createMany,
    this.connect,
  });

  factory MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedCreateNestedManyWithoutBotiquinInputFromJson(json);

  final Iterable<MedicamentoCreateWithoutBotiquinInput>? create;

  final Iterable<MedicamentoCreateOrConnectWithoutBotiquinInput>?
      connectOrCreate;

  final MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final Iterable<MedicamentoWhereUniqueInput>? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedCreateNestedManyWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateManyWithoutBotiquinNestedInput
    implements _i1.JsonSerializable {
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

  factory MedicamentoUpdateManyWithoutBotiquinNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpdateManyWithoutBotiquinNestedInputFromJson(json);

  final Iterable<MedicamentoCreateWithoutBotiquinInput>? create;

  final Iterable<MedicamentoCreateOrConnectWithoutBotiquinInput>?
      connectOrCreate;

  final Iterable<MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput>? upsert;

  final MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final Iterable<MedicamentoWhereUniqueInput>? set;

  final Iterable<MedicamentoWhereUniqueInput>? disconnect;

  final Iterable<MedicamentoWhereUniqueInput>? delete;

  final Iterable<MedicamentoWhereUniqueInput>? connect;

  final Iterable<MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput>? update;

  final Iterable<MedicamentoUpdateManyWithWhereWithoutBotiquinInput>?
      updateMany;

  final Iterable<MedicamentoScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpdateManyWithoutBotiquinNestedInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateOneRequiredWithoutBotiquinNestedInput
    implements _i1.JsonSerializable {
  const UserUpdateOneRequiredWithoutBotiquinNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory UserUpdateOneRequiredWithoutBotiquinNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateOneRequiredWithoutBotiquinNestedInputFromJson(json);

  final UserCreateWithoutBotiquinInput? create;

  final UserCreateOrConnectWithoutBotiquinInput? connectOrCreate;

  final UserUpsertWithoutBotiquinInput? upsert;

  final UserWhereUniqueInput? connect;

  final UserUpdateToOneWithWhereWithoutBotiquinInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateOneRequiredWithoutBotiquinNestedInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput
    implements _i1.JsonSerializable {
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

  factory MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInputFromJson(json);

  final Iterable<MedicamentoCreateWithoutBotiquinInput>? create;

  final Iterable<MedicamentoCreateOrConnectWithoutBotiquinInput>?
      connectOrCreate;

  final Iterable<MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput>? upsert;

  final MedicamentoCreateManyBotiquinInputEnvelope? createMany;

  final Iterable<MedicamentoWhereUniqueInput>? set;

  final Iterable<MedicamentoWhereUniqueInput>? disconnect;

  final Iterable<MedicamentoWhereUniqueInput>? delete;

  final Iterable<MedicamentoWhereUniqueInput>? connect;

  final Iterable<MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput>? update;

  final Iterable<MedicamentoUpdateManyWithWhereWithoutBotiquinInput>?
      updateMany;

  final Iterable<MedicamentoScalarWhereInput>? deleteMany;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateNestedOneWithoutMedicamentosInput
    implements _i1.JsonSerializable {
  const BotiquinCreateNestedOneWithoutMedicamentosInput({
    this.create,
    this.connectOrCreate,
    this.connect,
  });

  factory BotiquinCreateNestedOneWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCreateNestedOneWithoutMedicamentosInputFromJson(json);

  final BotiquinCreateWithoutMedicamentosInput? create;

  final BotiquinCreateOrConnectWithoutMedicamentosInput? connectOrCreate;

  final BotiquinWhereUniqueInput? connect;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCreateNestedOneWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class IntFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const IntFieldUpdateOperationsInput({
    this.set,
    this.increment,
    this.decrement,
    this.multiply,
    this.divide,
  });

  factory IntFieldUpdateOperationsInput.fromJson(Map<String, dynamic> json) =>
      _$IntFieldUpdateOperationsInputFromJson(json);

  final int? set;

  final int? increment;

  final int? decrement;

  final int? multiply;

  final int? divide;

  @override
  Map<String, dynamic> toJson() => _$IntFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput
    implements _i1.JsonSerializable {
  const BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput({
    this.create,
    this.connectOrCreate,
    this.upsert,
    this.connect,
    this.update,
  });

  factory BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpdateOneRequiredWithoutMedicamentosNestedInputFromJson(json);

  final BotiquinCreateWithoutMedicamentosInput? create;

  final BotiquinCreateOrConnectWithoutMedicamentosInput? connectOrCreate;

  final BotiquinUpsertWithoutMedicamentosInput? upsert;

  final BotiquinWhereUniqueInput? connect;

  final BotiquinUpdateToOneWithWhereWithoutMedicamentosInput? update;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateOneRequiredWithoutMedicamentosNestedInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
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

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableFilter implements _i1.JsonSerializable {
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

  factory NestedStringNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringNullableFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
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

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringNullableWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory NestedStringNullableWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringNullableWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringNullableWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntNullableFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringNullableFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringNullableFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringNullableWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntNullableFilter implements _i1.JsonSerializable {
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

  factory NestedIntNullableFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntNullableFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntNullableFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntNullableFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntWithAggregatesFilter implements _i1.JsonSerializable {
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

  factory NestedIntWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntWithAggregatesFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_avg')
  final NestedFloatFilter? $avg;

  @JsonKey(name: r'_sum')
  final NestedIntFilter? $sum;

  @JsonKey(name: r'_min')
  final NestedIntFilter? $min;

  @JsonKey(name: r'_max')
  final NestedIntFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$NestedIntWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedFloatFilter implements _i1.JsonSerializable {
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

  factory NestedFloatFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedFloatFilterFromJson(json);

  final double? equals;

  @JsonKey(name: r'in')
  final Iterable<double>? $in;

  final Iterable<double>? notIn;

  final double? lt;

  final double? lte;

  final double? gt;

  final double? gte;

  final NestedFloatFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedFloatFilterToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinCreateWithoutUserInput({
    this.id,
    required this.nombre,
    this.medicamentos,
  });

  factory BotiquinCreateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinCreateWithoutUserInputFromJson(json);

  final String? id;

  final String nombre;

  final MedicamentoCreateNestedManyWithoutBotiquinInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => _$BotiquinCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedCreateWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinUncheckedCreateWithoutUserInput({
    this.id,
    required this.nombre,
    this.medicamentos,
  });

  factory BotiquinUncheckedCreateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedCreateWithoutUserInputFromJson(json);

  final String? id;

  final String nombre;

  final MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput? medicamentos;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedCreateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateOrConnectWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinCreateOrConnectWithoutUserInput({
    required this.where,
    required this.create,
  });

  factory BotiquinCreateOrConnectWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCreateOrConnectWithoutUserInputFromJson(json);

  final BotiquinWhereUniqueInput where;

  final BotiquinCreateWithoutUserInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCreateOrConnectWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpsertWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinUpsertWithoutUserInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory BotiquinUpsertWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUpsertWithoutUserInputFromJson(json);

  final BotiquinUpdateWithoutUserInput update;

  final BotiquinCreateWithoutUserInput create;

  final BotiquinWhereInput? where;

  @override
  Map<String, dynamic> toJson() => _$BotiquinUpsertWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateToOneWithWhereWithoutUserInput
    implements _i1.JsonSerializable {
  const BotiquinUpdateToOneWithWhereWithoutUserInput({
    this.where,
    required this.data,
  });

  factory BotiquinUpdateToOneWithWhereWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpdateToOneWithWhereWithoutUserInputFromJson(json);

  final BotiquinWhereInput? where;

  final BotiquinUpdateWithoutUserInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateToOneWithWhereWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinUpdateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  factory BotiquinUpdateWithoutUserInput.fromJson(Map<String, dynamic> json) =>
      _$BotiquinUpdateWithoutUserInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final MedicamentoUpdateManyWithoutBotiquinNestedInput? medicamentos;

  @override
  Map<String, dynamic> toJson() => _$BotiquinUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedUpdateWithoutUserInput implements _i1.JsonSerializable {
  const BotiquinUncheckedUpdateWithoutUserInput({
    this.id,
    this.nombre,
    this.medicamentos,
  });

  factory BotiquinUncheckedUpdateWithoutUserInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedUpdateWithoutUserInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput? medicamentos;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedUpdateWithoutUserInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateWithoutBotiquinInput implements _i1.JsonSerializable {
  const MedicamentoCreateWithoutBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  factory MedicamentoCreateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCreateWithoutBotiquinInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCreateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedCreateWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUncheckedCreateWithoutBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  factory MedicamentoUncheckedCreateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedCreateWithoutBotiquinInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedCreateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateOrConnectWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoCreateOrConnectWithoutBotiquinInput({
    required this.where,
    required this.create,
  });

  factory MedicamentoCreateOrConnectWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCreateOrConnectWithoutBotiquinInputFromJson(json);

  final MedicamentoWhereUniqueInput where;

  final MedicamentoCreateWithoutBotiquinInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCreateOrConnectWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateManyBotiquinInputEnvelope
    implements _i1.JsonSerializable {
  const MedicamentoCreateManyBotiquinInputEnvelope({
    required this.data,
    this.skipDuplicates,
  });

  factory MedicamentoCreateManyBotiquinInputEnvelope.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCreateManyBotiquinInputEnvelopeFromJson(json);

  final Iterable<MedicamentoCreateManyBotiquinInput> data;

  final bool? skipDuplicates;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCreateManyBotiquinInputEnvelopeToJson(this);
}

@_i1.jsonSerializable
class UserCreateWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserCreateWithoutBotiquinInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  factory UserCreateWithoutBotiquinInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateWithoutBotiquinInputFromJson(json);

  final String? id;

  final String email;

  final String? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserCreateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserUncheckedCreateWithoutBotiquinInput({
    this.id,
    required this.email,
    this.name,
    required this.password,
  });

  factory UserUncheckedCreateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedCreateWithoutBotiquinInputFromJson(json);

  final String? id;

  final String email;

  final String? name;

  final String password;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedCreateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateOrConnectWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserCreateOrConnectWithoutBotiquinInput({
    required this.where,
    required this.create,
  });

  factory UserCreateOrConnectWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserCreateOrConnectWithoutBotiquinInputFromJson(json);

  final UserWhereUniqueInput where;

  final UserCreateWithoutBotiquinInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$UserCreateOrConnectWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput({
    required this.where,
    required this.update,
    required this.create,
  });

  factory MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpsertWithWhereUniqueWithoutBotiquinInputFromJson(json);

  final MedicamentoWhereUniqueInput where;

  final MedicamentoUpdateWithoutBotiquinInput update;

  final MedicamentoCreateWithoutBotiquinInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpsertWithWhereUniqueWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput({
    required this.where,
    required this.data,
  });

  factory MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpdateWithWhereUniqueWithoutBotiquinInputFromJson(json);

  final MedicamentoWhereUniqueInput where;

  final MedicamentoUpdateWithoutBotiquinInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpdateWithWhereUniqueWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateManyWithWhereWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUpdateManyWithWhereWithoutBotiquinInput({
    required this.where,
    required this.data,
  });

  factory MedicamentoUpdateManyWithWhereWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpdateManyWithWhereWithoutBotiquinInputFromJson(json);

  final MedicamentoScalarWhereInput where;

  final MedicamentoUpdateManyMutationInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpdateManyWithWhereWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoScalarWhereInput implements _i1.JsonSerializable {
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

  factory MedicamentoScalarWhereInput.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoScalarWhereInputFromJson(json);

  final Iterable<MedicamentoScalarWhereInput>? AND;

  final Iterable<MedicamentoScalarWhereInput>? OR;

  final Iterable<MedicamentoScalarWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? nombre;

  final DateTimeFilter? fechaVencimiento;

  final IntFilter? cantidad;

  @JsonKey(name: r'SKU')
  final StringFilter? sku;

  final StringFilter? botiquinId;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoScalarWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserUpsertWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserUpsertWithoutBotiquinInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory UserUpsertWithoutBotiquinInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpsertWithoutBotiquinInputFromJson(json);

  final UserUpdateWithoutBotiquinInput update;

  final UserCreateWithoutBotiquinInput create;

  final UserWhereInput? where;

  @override
  Map<String, dynamic> toJson() => _$UserUpsertWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateToOneWithWhereWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const UserUpdateToOneWithWhereWithoutBotiquinInput({
    this.where,
    required this.data,
  });

  factory UserUpdateToOneWithWhereWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUpdateToOneWithWhereWithoutBotiquinInputFromJson(json);

  final UserWhereInput? where;

  final UserUpdateWithoutBotiquinInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUpdateToOneWithWhereWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserUpdateWithoutBotiquinInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserUpdateWithoutBotiquinInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateWithoutBotiquinInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateWithoutBotiquinInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateWithoutBotiquinInput({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserUncheckedUpdateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserUncheckedUpdateWithoutBotiquinInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? email;

  final NullableStringFieldUpdateOperationsInput? name;

  final StringFieldUpdateOperationsInput? password;

  @override
  Map<String, dynamic> toJson() =>
      _$UserUncheckedUpdateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateWithoutMedicamentosInput implements _i1.JsonSerializable {
  const BotiquinCreateWithoutMedicamentosInput({
    this.id,
    required this.nombre,
    required this.user,
  });

  factory BotiquinCreateWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCreateWithoutMedicamentosInputFromJson(json);

  final String? id;

  final String nombre;

  final UserCreateNestedOneWithoutBotiquinInput user;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCreateWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedCreateWithoutMedicamentosInput
    implements _i1.JsonSerializable {
  const BotiquinUncheckedCreateWithoutMedicamentosInput({
    this.id,
    required this.nombre,
    required this.userId,
  });

  factory BotiquinUncheckedCreateWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedCreateWithoutMedicamentosInputFromJson(json);

  final String? id;

  final String nombre;

  final String userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedCreateWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinCreateOrConnectWithoutMedicamentosInput
    implements _i1.JsonSerializable {
  const BotiquinCreateOrConnectWithoutMedicamentosInput({
    required this.where,
    required this.create,
  });

  factory BotiquinCreateOrConnectWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinCreateOrConnectWithoutMedicamentosInputFromJson(json);

  final BotiquinWhereUniqueInput where;

  final BotiquinCreateWithoutMedicamentosInput create;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinCreateOrConnectWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpsertWithoutMedicamentosInput implements _i1.JsonSerializable {
  const BotiquinUpsertWithoutMedicamentosInput({
    required this.update,
    required this.create,
    this.where,
  });

  factory BotiquinUpsertWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpsertWithoutMedicamentosInputFromJson(json);

  final BotiquinUpdateWithoutMedicamentosInput update;

  final BotiquinCreateWithoutMedicamentosInput create;

  final BotiquinWhereInput? where;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpsertWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateToOneWithWhereWithoutMedicamentosInput
    implements _i1.JsonSerializable {
  const BotiquinUpdateToOneWithWhereWithoutMedicamentosInput({
    this.where,
    required this.data,
  });

  factory BotiquinUpdateToOneWithWhereWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpdateToOneWithWhereWithoutMedicamentosInputFromJson(json);

  final BotiquinWhereInput? where;

  final BotiquinUpdateWithoutMedicamentosInput data;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateToOneWithWhereWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUpdateWithoutMedicamentosInput implements _i1.JsonSerializable {
  const BotiquinUpdateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    this.user,
  });

  factory BotiquinUpdateWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUpdateWithoutMedicamentosInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final UserUpdateOneRequiredWithoutBotiquinNestedInput? user;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUpdateWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class BotiquinUncheckedUpdateWithoutMedicamentosInput
    implements _i1.JsonSerializable {
  const BotiquinUncheckedUpdateWithoutMedicamentosInput({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinUncheckedUpdateWithoutMedicamentosInput.fromJson(
          Map<String, dynamic> json) =>
      _$BotiquinUncheckedUpdateWithoutMedicamentosInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final StringFieldUpdateOperationsInput? userId;

  @override
  Map<String, dynamic> toJson() =>
      _$BotiquinUncheckedUpdateWithoutMedicamentosInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoCreateManyBotiquinInput implements _i1.JsonSerializable {
  const MedicamentoCreateManyBotiquinInput({
    this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
  });

  factory MedicamentoCreateManyBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoCreateManyBotiquinInputFromJson(json);

  final String? id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoCreateManyBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUpdateWithoutBotiquinInput implements _i1.JsonSerializable {
  const MedicamentoUpdateWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  factory MedicamentoUpdateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUpdateWithoutBotiquinInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUpdateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedUpdateWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUncheckedUpdateWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  factory MedicamentoUncheckedUpdateWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedUpdateWithoutBotiquinInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedUpdateWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class MedicamentoUncheckedUpdateManyWithoutBotiquinInput
    implements _i1.JsonSerializable {
  const MedicamentoUncheckedUpdateManyWithoutBotiquinInput({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
  });

  factory MedicamentoUncheckedUpdateManyWithoutBotiquinInput.fromJson(
          Map<String, dynamic> json) =>
      _$MedicamentoUncheckedUpdateManyWithoutBotiquinInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? nombre;

  final DateTimeFieldUpdateOperationsInput? fechaVencimiento;

  final IntFieldUpdateOperationsInput? cantidad;

  @JsonKey(name: r'SKU')
  final StringFieldUpdateOperationsInput? sku;

  @override
  Map<String, dynamic> toJson() =>
      _$MedicamentoUncheckedUpdateManyWithoutBotiquinInputToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.email,
    this.name,
    required this.password,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String id;

  final String email;

  final String? name;

  final String password;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

@_i1.jsonSerializable
class Botiquin implements _i1.JsonSerializable {
  const Botiquin({
    required this.id,
    required this.nombre,
    required this.userId,
  });

  factory Botiquin.fromJson(Map<String, dynamic> json) =>
      _$BotiquinFromJson(json);

  final String id;

  final String nombre;

  final String userId;

  @override
  Map<String, dynamic> toJson() => _$BotiquinToJson(this);
}

@_i1.jsonSerializable
class Medicamento implements _i1.JsonSerializable {
  const Medicamento({
    required this.id,
    required this.nombre,
    required this.fechaVencimiento,
    required this.cantidad,
    required this.sku,
    required this.botiquinId,
  });

  factory Medicamento.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoFromJson(json);

  final String id;

  final String nombre;

  final DateTime fechaVencimiento;

  final int cantidad;

  @JsonKey(name: r'SKU')
  final String sku;

  final String botiquinId;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoToJson(this);
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );

  BotiquinFluent<Botiquin?> botiquin({BotiquinWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'botiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'botiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : null);
    return BotiquinFluent<Botiquin?>(
      future,
      query,
    );
  }
}

class BotiquinFluent<T> extends _i1.PrismaFluent<T> {
  const BotiquinFluent(
    super.original,
    super.$query,
  );

  Future<Iterable<Medicamento>?> medicamentos({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithRelationInput>? orderBy,
    MedicamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<MedicamentoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'medicamentos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'medicamentos',
    );
    final fields = MedicamentoScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> medicamentos) => medicamentos
        .map((Map medicamentos) => Medicamento.fromJson(medicamentos.cast()));
    return query(fields)
        .then((json) => json is Iterable ? compiler(json.cast()) : null);
  }

  UserFluent<User> user() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'user',
          fields: fields,
        )
      ]),
      key: r'user',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  BotiquinCountOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BotiquinCountOutputType(query);
  }
}

class MedicamentoFluent<T> extends _i1.PrismaFluent<T> {
  const MedicamentoFluent(
    super.original,
    super.$query,
  );

  BotiquinFluent<Botiquin> botiquin() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'botiquin',
          fields: fields,
        )
      ]),
      key: r'botiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Botiquin)'));
    return BotiquinFluent<Botiquin>(
      future,
      query,
    );
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension BotiquinModelDelegateExtension on _i1.ModelDelegate<Botiquin> {
  BotiquinFluent<Botiquin?> findUnique(
      {required BotiquinWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : null);
    return BotiquinFluent<Botiquin?>(
      future,
      query,
    );
  }

  BotiquinFluent<Botiquin> findUniqueOrThrow(
      {required BotiquinWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueBotiquinOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueBotiquinOrThrow',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Botiquin)'));
    return BotiquinFluent<Botiquin>(
      future,
      query,
    );
  }

  BotiquinFluent<Botiquin?> findFirst({
    BotiquinWhereInput? where,
    Iterable<BotiquinOrderByWithRelationInput>? orderBy,
    BotiquinWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BotiquinScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : null);
    return BotiquinFluent<Botiquin?>(
      future,
      query,
    );
  }

  BotiquinFluent<Botiquin> findFirstOrThrow({
    BotiquinWhereInput? where,
    Iterable<BotiquinOrderByWithRelationInput>? orderBy,
    BotiquinWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BotiquinScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstBotiquinOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstBotiquinOrThrow',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Botiquin)'));
    return BotiquinFluent<Botiquin>(
      future,
      query,
    );
  }

  Future<Iterable<Botiquin>> findMany({
    BotiquinWhereInput? where,
    Iterable<BotiquinOrderByWithRelationInput>? orderBy,
    BotiquinWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<BotiquinScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyBotiquin',
    );
    final fields = BotiquinScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyBotiquin) => findManyBotiquin.map(
        (Map findManyBotiquin) => Botiquin.fromJson(findManyBotiquin.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  BotiquinFluent<Botiquin> create({required BotiquinCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Botiquin)'));
    return BotiquinFluent<Botiquin>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<BotiquinCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyBotiquin',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyBotiquin) =>
        AffectedRowsOutput.fromJson(createManyBotiquin.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BotiquinFluent<Botiquin?> update({
    required BotiquinUpdateInput data,
    required BotiquinWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : null);
    return BotiquinFluent<Botiquin?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required BotiquinUpdateManyMutationInput data,
    BotiquinWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyBotiquin',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyBotiquin) =>
        AffectedRowsOutput.fromJson(updateManyBotiquin.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  BotiquinFluent<Botiquin> upsert({
    required BotiquinWhereUniqueInput where,
    required BotiquinCreateInput create,
    required BotiquinUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Botiquin)'));
    return BotiquinFluent<Botiquin>(
      future,
      query,
    );
  }

  BotiquinFluent<Botiquin?> delete({required BotiquinWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneBotiquin',
    );
    final future = query(BotiquinScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Botiquin.fromJson(json.cast<String, dynamic>())
            : null);
    return BotiquinFluent<Botiquin?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({BotiquinWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyBotiquin',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyBotiquin) =>
        AffectedRowsOutput.fromJson(deleteManyBotiquin.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateBotiquin aggregate({
    BotiquinWhereInput? where,
    Iterable<BotiquinOrderByWithRelationInput>? orderBy,
    BotiquinWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateBotiquin',
    );
    return AggregateBotiquin(query);
  }

  Future<Iterable<BotiquinGroupByOutputType>> groupBy({
    BotiquinWhereInput? where,
    Iterable<BotiquinOrderByWithAggregationInput>? orderBy,
    required Iterable<BotiquinScalarFieldEnum> by,
    BotiquinScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByBotiquin',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByBotiquin',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByBotiquin) =>
        groupByBotiquin.map((Map groupByBotiquin) =>
            BotiquinGroupByOutputType.fromJson(groupByBotiquin.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension MedicamentoModelDelegateExtension on _i1.ModelDelegate<Medicamento> {
  MedicamentoFluent<Medicamento?> findUnique(
      {required MedicamentoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : null);
    return MedicamentoFluent<Medicamento?>(
      future,
      query,
    );
  }

  MedicamentoFluent<Medicamento> findUniqueOrThrow(
      {required MedicamentoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueMedicamentoOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueMedicamentoOrThrow',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Medicamento)'));
    return MedicamentoFluent<Medicamento>(
      future,
      query,
    );
  }

  MedicamentoFluent<Medicamento?> findFirst({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithRelationInput>? orderBy,
    MedicamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<MedicamentoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : null);
    return MedicamentoFluent<Medicamento?>(
      future,
      query,
    );
  }

  MedicamentoFluent<Medicamento> findFirstOrThrow({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithRelationInput>? orderBy,
    MedicamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<MedicamentoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstMedicamentoOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstMedicamentoOrThrow',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Medicamento)'));
    return MedicamentoFluent<Medicamento>(
      future,
      query,
    );
  }

  Future<Iterable<Medicamento>> findMany({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithRelationInput>? orderBy,
    MedicamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<MedicamentoScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyMedicamento',
    );
    final fields = MedicamentoScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyMedicamento) =>
        findManyMedicamento.map((Map findManyMedicamento) =>
            Medicamento.fromJson(findManyMedicamento.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  MedicamentoFluent<Medicamento> create(
      {required MedicamentoCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Medicamento)'));
    return MedicamentoFluent<Medicamento>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<MedicamentoCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyMedicamento',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyMedicamento) =>
        AffectedRowsOutput.fromJson(createManyMedicamento.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  MedicamentoFluent<Medicamento?> update({
    required MedicamentoUpdateInput data,
    required MedicamentoWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : null);
    return MedicamentoFluent<Medicamento?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required MedicamentoUpdateManyMutationInput data,
    MedicamentoWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyMedicamento',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyMedicamento) =>
        AffectedRowsOutput.fromJson(updateManyMedicamento.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  MedicamentoFluent<Medicamento> upsert({
    required MedicamentoWhereUniqueInput where,
    required MedicamentoCreateInput create,
    required MedicamentoUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Medicamento)'));
    return MedicamentoFluent<Medicamento>(
      future,
      query,
    );
  }

  MedicamentoFluent<Medicamento?> delete(
      {required MedicamentoWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneMedicamento',
    );
    final future = query(MedicamentoScalarFieldEnum.values.toGraphQLFields())
        .then((json) => json is Map
            ? Medicamento.fromJson(json.cast<String, dynamic>())
            : null);
    return MedicamentoFluent<Medicamento?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({MedicamentoWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyMedicamento',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyMedicamento) =>
        AffectedRowsOutput.fromJson(deleteManyMedicamento.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateMedicamento aggregate({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithRelationInput>? orderBy,
    MedicamentoWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateMedicamento',
    );
    return AggregateMedicamento(query);
  }

  Future<Iterable<MedicamentoGroupByOutputType>> groupBy({
    MedicamentoWhereInput? where,
    Iterable<MedicamentoOrderByWithAggregationInput>? orderBy,
    required Iterable<MedicamentoScalarFieldEnum> by,
    MedicamentoScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByMedicamento',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByMedicamento',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByMedicamento) =>
        groupByMedicamento.map((Map groupByMedicamento) =>
            MedicamentoGroupByOutputType.fromJson(groupByMedicamento.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.email,
    this.name,
    this.password,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final String? id;

  final String? email;

  final String? name;

  final String? password;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class BotiquinGroupByOutputType implements _i1.JsonSerializable {
  const BotiquinGroupByOutputType({
    this.id,
    this.nombre,
    this.userId,
  });

  factory BotiquinGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$BotiquinGroupByOutputTypeFromJson(json);

  final String? id;

  final String? nombre;

  final String? userId;

  @override
  Map<String, dynamic> toJson() => _$BotiquinGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class MedicamentoGroupByOutputType implements _i1.JsonSerializable {
  const MedicamentoGroupByOutputType({
    this.id,
    this.nombre,
    this.fechaVencimiento,
    this.cantidad,
    this.sku,
    this.botiquinId,
  });

  factory MedicamentoGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$MedicamentoGroupByOutputTypeFromJson(json);

  final String? id;

  final String? nombre;

  final DateTime? fechaVencimiento;

  final int? cantidad;

  @JsonKey(name: r'SKU')
  final String? sku;

  final String? botiquinId;

  @override
  Map<String, dynamic> toJson() => _$MedicamentoGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class AggregateBotiquin {
  const AggregateBotiquin(this.$query);

  final _i1.PrismaFluentQuery $query;

  BotiquinCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return BotiquinCountAggregateOutputType(query);
  }

  BotiquinMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return BotiquinMinAggregateOutputType(query);
  }

  BotiquinMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return BotiquinMaxAggregateOutputType(query);
  }
}

class AggregateMedicamento {
  const AggregateMedicamento(this.$query);

  final _i1.PrismaFluentQuery $query;

  MedicamentoCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return MedicamentoCountAggregateOutputType(query);
  }

  MedicamentoAvgAggregateOutputType $avg() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_avg',
          fields: fields,
        )
      ]),
      key: r'_avg',
    );
    return MedicamentoAvgAggregateOutputType(query);
  }

  MedicamentoSumAggregateOutputType $sum() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_sum',
          fields: fields,
        )
      ]),
      key: r'_sum',
    );
    return MedicamentoSumAggregateOutputType(query);
  }

  MedicamentoMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return MedicamentoMinAggregateOutputType(query);
  }

  MedicamentoMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return MedicamentoMaxAggregateOutputType(query);
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> email() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'email',
          fields: fields,
        )
      ]),
      key: r'email',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class BotiquinCountOutputType {
  const BotiquinCountOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> medicamentos({MedicamentoWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'medicamentos',
          fields: fields,
          args: args,
        )
      ]),
      key: r'medicamentos',
    );
    return query(const []).then((value) => (value as int));
  }
}

class BotiquinCountAggregateOutputType {
  const BotiquinCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class BotiquinMinAggregateOutputType {
  const BotiquinMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class BotiquinMaxAggregateOutputType {
  const BotiquinMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> userId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'userId',
          fields: fields,
        )
      ]),
      key: r'userId',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class MedicamentoCountAggregateOutputType {
  const MedicamentoCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> fechaVencimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fechaVencimiento',
          fields: fields,
        )
      ]),
      key: r'fechaVencimiento',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> cantidad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cantidad',
          fields: fields,
        )
      ]),
      key: r'cantidad',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> sku() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SKU',
          fields: fields,
        )
      ]),
      key: r'SKU',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> botiquinId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'botiquinId',
          fields: fields,
        )
      ]),
      key: r'botiquinId',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class MedicamentoAvgAggregateOutputType {
  const MedicamentoAvgAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<double?> cantidad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cantidad',
          fields: fields,
        )
      ]),
      key: r'cantidad',
    );
    return query(const []).then((value) => (value as double?));
  }
}

class MedicamentoSumAggregateOutputType {
  const MedicamentoSumAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int?> cantidad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cantidad',
          fields: fields,
        )
      ]),
      key: r'cantidad',
    );
    return query(const []).then((value) => (value as int?));
  }
}

class MedicamentoMinAggregateOutputType {
  const MedicamentoMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> fechaVencimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fechaVencimiento',
          fields: fields,
        )
      ]),
      key: r'fechaVencimiento',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<int?> cantidad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cantidad',
          fields: fields,
        )
      ]),
      key: r'cantidad',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> sku() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SKU',
          fields: fields,
        )
      ]),
      key: r'SKU',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> botiquinId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'botiquinId',
          fields: fields,
        )
      ]),
      key: r'botiquinId',
    );
    return query(const []).then((value) => (value as String?));
  }
}

class MedicamentoMaxAggregateOutputType {
  const MedicamentoMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> nombre() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'nombre',
          fields: fields,
        )
      ]),
      key: r'nombre',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> fechaVencimiento() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'fechaVencimiento',
          fields: fields,
        )
      ]),
      key: r'fechaVencimiento',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }

  Future<int?> cantidad() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'cantidad',
          fields: fields,
        )
      ]),
      key: r'cantidad',
    );
    return query(const []).then((value) => (value as int?));
  }

  Future<String?> sku() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'SKU',
          fields: fields,
        )
      ]),
      key: r'SKU',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> botiquinId() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'botiquinId',
          fields: fields,
        )
      ]),
      key: r'botiquinId',
    );
    return query(const []).then((value) => (value as String?));
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKLy8gTG9va2luZyBmb3Igd2F5cyB0byBzcGVlZCB1cCB5b3VyIHF1ZXJpZXMsIG9yIHNjYWxlIGVhc2lseSB3aXRoIHlvdXIgc2VydmVybGVzcyBvciBlZGdlIGZ1bmN0aW9ucz8KLy8gVHJ5IFByaXNtYSBBY2NlbGVyYXRlOiBodHRwczovL3ByaXMubHkvY2xpL2FjY2VsZXJhdGUtaW5pdAoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJwb3N0Z3Jlc3FsIgogIHVybCAgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKICBkaXJlY3RVcmwgPSBlbnYoIkRJUkVDVF9VUkwiKQoKfQoKbW9kZWwgVXNlciB7CiAgaWQgICAgICAgIFN0cmluZyAgIEBpZCBAZGVmYXVsdChjdWlkKCkpCiAgZW1haWwgICAgIFN0cmluZyAgIEB1bmlxdWUKICBuYW1lICAgICAgU3RyaW5nPwogIHBhc3N3b3JkICBTdHJpbmcKICBib3RpcXVpbiBCb3RpcXVpbj8KfQoKbW9kZWwgQm90aXF1aW4gewogIGlkICAgICAgICBTdHJpbmcgICBAaWQgQGRlZmF1bHQoY3VpZCgpKQogIG5vbWJyZSAgICBTdHJpbmcKICBtZWRpY2FtZW50b3MgTWVkaWNhbWVudG9bXQogIHVzZXIgICAgICBVc2VyICAgICBAcmVsYXRpb24oZmllbGRzOiBbdXNlcklkXSwgcmVmZXJlbmNlczogW2lkXSkKICB1c2VySWQgICAgU3RyaW5nICBAdW5pcXVlCn0KCm1vZGVsIE1lZGljYW1lbnRvIHsKICBpZCAgICAgICAgU3RyaW5nICAgQGlkIEBkZWZhdWx0KGN1aWQoKSkKICBub21icmUgICAgU3RyaW5nCiAgZmVjaGFWZW5jaW1pZW50byAgRGF0ZVRpbWUKICBjYW50aWRhZCAgSW50CiAgU0tVICAgICAgIFN0cmluZyBAdW5pcXVlCiAgYm90aXF1aW4gIEJvdGlxdWluIEByZWxhdGlvbihmaWVsZHM6IFtib3RpcXVpbklkXSwgcmVmZXJlbmNlczogW2lkXSkKICBib3RpcXVpbklkIFN0cmluZwp9',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'C:\Users\liada\Documents\Ultimo Semestre\ProyectoDeTitulo\botiquin_electronico\db\node_modules\prisma\query-engine-windows.exe',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );

  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Botiquin> get botiquin => _i1.ModelDelegate<Botiquin>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );

  _i1.ModelDelegate<Medicamento> get medicamento =>
      _i1.ModelDelegate<Medicamento>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
