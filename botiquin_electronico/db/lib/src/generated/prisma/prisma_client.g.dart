// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prisma_client.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserWhereInput _$UserWhereInputFromJson(Map<String, dynamic> json) =>
    UserWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFilter.fromJson(json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringNullableFilter.fromJson(json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinNullableRelationFilter.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereInputToJson(UserWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserOrderByWithRelationInput _$UserOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinOrderByWithRelationInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithRelationInputToJson(
    UserOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

const _$SortOrderEnumMap = {
  SortOrder.asc: 'asc',
  SortOrder.desc: 'desc',
};

UserWhereUniqueInput _$UserWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    UserWhereUniqueInput(
      id: json['id'] as String?,
      email: json['email'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => UserWhereInput.fromJson(e as Map<String, dynamic>)),
      name: json['name'] == null
          ? null
          : StringNullableFilter.fromJson(json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFilter.fromJson(json['password'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinNullableRelationFilter.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserWhereUniqueInputToJson(
    UserWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserOrderByWithAggregationInput _$UserOrderByWithAggregationInputFromJson(
        Map<String, dynamic> json) =>
    UserOrderByWithAggregationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
      $count: json['_count'] == null
          ? null
          : UserCountOrderByAggregateInput.fromJson(
              json['_count'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : UserMaxOrderByAggregateInput.fromJson(
              json['_max'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : UserMinOrderByAggregateInput.fromJson(
              json['_min'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserOrderByWithAggregationInputToJson(
    UserOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

UserScalarWhereWithAggregatesInput _$UserScalarWhereWithAggregatesInputFromJson(
        Map<String, dynamic> json) =>
    UserScalarWhereWithAggregatesInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          UserScalarWhereWithAggregatesInput.fromJson(
              e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : StringNullableWithAggregatesFilter.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringWithAggregatesFilter.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserScalarWhereWithAggregatesInputToJson(
    UserScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

BotiquinWhereInput _$BotiquinWhereInputFromJson(Map<String, dynamic> json) =>
    BotiquinWhereInput(
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFilter.fromJson(json['userId'] as Map<String, dynamic>),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoListRelationFilter.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinWhereInputToJson(BotiquinWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

BotiquinOrderByWithRelationInput _$BotiquinOrderByWithRelationInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinOrderByWithRelationInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoOrderByRelationAggregateInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserOrderByWithRelationInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinOrderByWithRelationInputToJson(
    BotiquinOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

BotiquinWhereUniqueInput _$BotiquinWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinWhereUniqueInput(
      id: json['id'] as String?,
      userId: json['userId'] as String?,
      AND: (json['AND'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)
          ?.map((e) => BotiquinWhereInput.fromJson(e as Map<String, dynamic>)),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoListRelationFilter.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserRelationFilter.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinWhereUniqueInputToJson(
    BotiquinWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('userId', instance.userId);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

BotiquinOrderByWithAggregationInput
    _$BotiquinOrderByWithAggregationInputFromJson(Map<String, dynamic> json) =>
        BotiquinOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
          $count: json['_count'] == null
              ? null
              : BotiquinCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : BotiquinMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : BotiquinMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinOrderByWithAggregationInputToJson(
    BotiquinOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  return val;
}

BotiquinScalarWhereWithAggregatesInput
    _$BotiquinScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              BotiquinScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              BotiquinScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              BotiquinScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          userId: json['userId'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['userId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinScalarWhereWithAggregatesInputToJson(
    BotiquinScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  return val;
}

MedicamentoWhereInput _$MedicamentoWhereInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFilter.fromJson(json['cantidad'] as Map<String, dynamic>),
      botiquinId: json['botiquinId'] == null
          ? null
          : StringFilter.fromJson(json['botiquinId'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinRelationFilter.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoWhereInputToJson(
    MedicamentoWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

MedicamentoOrderByWithRelationInput
    _$MedicamentoOrderByWithRelationInputFromJson(Map<String, dynamic> json) =>
        MedicamentoOrderByWithRelationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
          botiquinId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['botiquinId']),
          botiquin: json['botiquin'] == null
              ? null
              : BotiquinOrderByWithRelationInput.fromJson(
                  json['botiquin'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoOrderByWithRelationInputToJson(
    MedicamentoOrderByWithRelationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  writeNotNull('botiquinId', _$SortOrderEnumMap[instance.botiquinId]);
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

MedicamentoWhereUniqueInput _$MedicamentoWhereUniqueInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoWhereUniqueInput(
      id: json['id'] as String?,
      AND: (json['AND'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map(
          (e) => MedicamentoWhereInput.fromJson(e as Map<String, dynamic>)),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFilter.fromJson(json['cantidad'] as Map<String, dynamic>),
      botiquinId: json['botiquinId'] == null
          ? null
          : StringFilter.fromJson(json['botiquinId'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinRelationFilter.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoWhereUniqueInputToJson(
    MedicamentoWhereUniqueInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

MedicamentoOrderByWithAggregationInput
    _$MedicamentoOrderByWithAggregationInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoOrderByWithAggregationInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
          botiquinId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['botiquinId']),
          $count: json['_count'] == null
              ? null
              : MedicamentoCountOrderByAggregateInput.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $avg: json['_avg'] == null
              ? null
              : MedicamentoAvgOrderByAggregateInput.fromJson(
                  json['_avg'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : MedicamentoMaxOrderByAggregateInput.fromJson(
                  json['_max'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : MedicamentoMinOrderByAggregateInput.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $sum: json['_sum'] == null
              ? null
              : MedicamentoSumOrderByAggregateInput.fromJson(
                  json['_sum'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoOrderByWithAggregationInputToJson(
    MedicamentoOrderByWithAggregationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  writeNotNull('botiquinId', _$SortOrderEnumMap[instance.botiquinId]);
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  return val;
}

MedicamentoScalarWhereWithAggregatesInput
    _$MedicamentoScalarWhereWithAggregatesInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoScalarWhereWithAggregatesInput(
          AND: (json['AND'] as List<dynamic>?)?.map((e) =>
              MedicamentoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          OR: (json['OR'] as List<dynamic>?)?.map((e) =>
              MedicamentoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
              MedicamentoScalarWhereWithAggregatesInput.fromJson(
                  e as Map<String, dynamic>)),
          id: json['id'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          cantidad: json['cantidad'] == null
              ? null
              : IntWithAggregatesFilter.fromJson(
                  json['cantidad'] as Map<String, dynamic>),
          botiquinId: json['botiquinId'] == null
              ? null
              : StringWithAggregatesFilter.fromJson(
                  json['botiquinId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoScalarWhereWithAggregatesInputToJson(
    MedicamentoScalarWhereWithAggregatesInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  return val;
}

UserCreateInput _$UserCreateInputFromJson(Map<String, dynamic> json) =>
    UserCreateInput(
      id: json['id'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinCreateNestedOneWithoutUserInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserCreateInputToJson(UserCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserUncheckedCreateInput _$UserUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedCreateInput(
      id: json['id'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinUncheckedCreateNestedOneWithoutUserInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedCreateInputToJson(
    UserUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserUpdateInput _$UserUpdateInputFromJson(Map<String, dynamic> json) =>
    UserUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinUpdateOneWithoutUserNestedInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateInputToJson(UserUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserUncheckedUpdateInput _$UserUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinUncheckedUpdateOneWithoutUserNestedInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateInputToJson(
    UserUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

UserCreateManyInput _$UserCreateManyInputFromJson(Map<String, dynamic> json) =>
    UserCreateManyInput(
      id: json['id'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateManyInputToJson(UserCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  return val;
}

UserUpdateManyMutationInput _$UserUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateManyMutationInputToJson(
    UserUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateManyInput _$UserUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    UserUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUncheckedUpdateManyInputToJson(
    UserUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

BotiquinCreateInput _$BotiquinCreateInputFromJson(Map<String, dynamic> json) =>
    BotiquinCreateInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoCreateNestedManyWithoutBotiquinInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
      user: UserCreateNestedOneWithoutBotiquinInput.fromJson(
          json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinCreateInputToJson(BotiquinCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  val['user'] = instance.user.toJson();
  return val;
}

BotiquinUncheckedCreateInput _$BotiquinUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUncheckedCreateInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      userId: json['userId'] as String,
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUncheckedCreateInputToJson(
    BotiquinUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['userId'] = instance.userId;
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

BotiquinUpdateInput _$BotiquinUpdateInputFromJson(Map<String, dynamic> json) =>
    BotiquinUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoUpdateManyWithoutBotiquinNestedInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : UserUpdateOneRequiredWithoutBotiquinNestedInput.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUpdateInputToJson(BotiquinUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

BotiquinUncheckedUpdateInput _$BotiquinUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUncheckedUpdateInputToJson(
    BotiquinUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

BotiquinCreateManyInput _$BotiquinCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinCreateManyInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$BotiquinCreateManyInputToJson(
    BotiquinCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['userId'] = instance.userId;
  return val;
}

BotiquinUpdateManyMutationInput _$BotiquinUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUpdateManyMutationInputToJson(
    BotiquinUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  return val;
}

BotiquinUncheckedUpdateManyInput _$BotiquinUncheckedUpdateManyInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUncheckedUpdateManyInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['userId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUncheckedUpdateManyInputToJson(
    BotiquinUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  return val;
}

MedicamentoCreateInput _$MedicamentoCreateInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoCreateInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      cantidad: json['cantidad'] as int,
      botiquin: BotiquinCreateNestedOneWithoutMedicamentosInput.fromJson(
          json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoCreateInputToJson(
    MedicamentoCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  val['botiquin'] = instance.botiquin.toJson();
  return val;
}

MedicamentoUncheckedCreateInput _$MedicamentoUncheckedCreateInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoUncheckedCreateInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      cantidad: json['cantidad'] as int,
      botiquinId: json['botiquinId'] as String,
    );

Map<String, dynamic> _$MedicamentoUncheckedCreateInputToJson(
    MedicamentoUncheckedCreateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  val['botiquinId'] = instance.botiquinId;
  return val;
}

MedicamentoUpdateInput _$MedicamentoUpdateInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['cantidad'] as Map<String, dynamic>),
      botiquin: json['botiquin'] == null
          ? null
          : BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput.fromJson(
              json['botiquin'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoUpdateInputToJson(
    MedicamentoUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquin', instance.botiquin?.toJson());
  return val;
}

MedicamentoUncheckedUpdateInput _$MedicamentoUncheckedUpdateInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoUncheckedUpdateInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['cantidad'] as Map<String, dynamic>),
      botiquinId: json['botiquinId'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['botiquinId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoUncheckedUpdateInputToJson(
    MedicamentoUncheckedUpdateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  return val;
}

MedicamentoCreateManyInput _$MedicamentoCreateManyInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoCreateManyInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      cantidad: json['cantidad'] as int,
      botiquinId: json['botiquinId'] as String,
    );

Map<String, dynamic> _$MedicamentoCreateManyInputToJson(
    MedicamentoCreateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  val['botiquinId'] = instance.botiquinId;
  return val;
}

MedicamentoUpdateManyMutationInput _$MedicamentoUpdateManyMutationInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoUpdateManyMutationInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFieldUpdateOperationsInput.fromJson(
              json['cantidad'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoUpdateManyMutationInputToJson(
    MedicamentoUpdateManyMutationInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  return val;
}

MedicamentoUncheckedUpdateManyInput
    _$MedicamentoUncheckedUpdateManyInputFromJson(Map<String, dynamic> json) =>
        MedicamentoUncheckedUpdateManyInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          cantidad: json['cantidad'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['cantidad'] as Map<String, dynamic>),
          botiquinId: json['botiquinId'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['botiquinId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoUncheckedUpdateManyInputToJson(
    MedicamentoUncheckedUpdateManyInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  return val;
}

StringFilter _$StringFilterFromJson(Map<String, dynamic> json) => StringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringFilterToJson(StringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

const _$QueryModeEnumMap = {
  QueryMode.$default: 'default',
  QueryMode.insensitive: 'insensitive',
};

StringNullableFilter _$StringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableFilterToJson(
    StringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

BotiquinNullableRelationFilter _$BotiquinNullableRelationFilterFromJson(
        Map<String, dynamic> json) =>
    BotiquinNullableRelationFilter(
      $is: json['is'] == null
          ? null
          : BotiquinWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : BotiquinWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinNullableRelationFilterToJson(
    BotiquinNullableRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

SortOrderInput _$SortOrderInputFromJson(Map<String, dynamic> json) =>
    SortOrderInput(
      sort: $enumDecode(_$SortOrderEnumMap, json['sort']),
      nulls: $enumDecodeNullable(_$NullsOrderEnumMap, json['nulls']),
    );

Map<String, dynamic> _$SortOrderInputToJson(SortOrderInput instance) {
  final val = <String, dynamic>{
    'sort': _$SortOrderEnumMap[instance.sort]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('nulls', _$NullsOrderEnumMap[instance.nulls]);
  return val;
}

const _$NullsOrderEnumMap = {
  NullsOrder.first: 'first',
  NullsOrder.last: 'last',
};

UserCountOrderByAggregateInput _$UserCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserCountOrderByAggregateInputToJson(
    UserCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMaxOrderByAggregateInput _$UserMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMaxOrderByAggregateInputToJson(
    UserMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

UserMinOrderByAggregateInput _$UserMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    UserMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      email: $enumDecodeNullable(_$SortOrderEnumMap, json['email']),
      name: $enumDecodeNullable(_$SortOrderEnumMap, json['name']),
      password: $enumDecodeNullable(_$SortOrderEnumMap, json['password']),
    );

Map<String, dynamic> _$UserMinOrderByAggregateInputToJson(
    UserMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('email', _$SortOrderEnumMap[instance.email]);
  writeNotNull('name', _$SortOrderEnumMap[instance.name]);
  writeNotNull('password', _$SortOrderEnumMap[instance.password]);
  return val;
}

StringWithAggregatesFilter _$StringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringWithAggregatesFilterToJson(
    StringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

StringNullableWithAggregatesFilter _$StringNullableWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    StringNullableWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      mode: $enumDecodeNullable(_$QueryModeEnumMap, json['mode']),
      not: json['not'] == null
          ? null
          : NestedStringNullableWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StringNullableWithAggregatesFilterToJson(
    StringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('mode', _$QueryModeEnumMap[instance.mode]);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

MedicamentoListRelationFilter _$MedicamentoListRelationFilterFromJson(
        Map<String, dynamic> json) =>
    MedicamentoListRelationFilter(
      every: json['every'] == null
          ? null
          : MedicamentoWhereInput.fromJson(
              json['every'] as Map<String, dynamic>),
      some: json['some'] == null
          ? null
          : MedicamentoWhereInput.fromJson(
              json['some'] as Map<String, dynamic>),
      none: json['none'] == null
          ? null
          : MedicamentoWhereInput.fromJson(
              json['none'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoListRelationFilterToJson(
    MedicamentoListRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('every', instance.every?.toJson());
  writeNotNull('some', instance.some?.toJson());
  writeNotNull('none', instance.none?.toJson());
  return val;
}

UserRelationFilter _$UserRelationFilterFromJson(Map<String, dynamic> json) =>
    UserRelationFilter(
      $is: json['is'] == null
          ? null
          : UserWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : UserWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserRelationFilterToJson(UserRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

MedicamentoOrderByRelationAggregateInput
    _$MedicamentoOrderByRelationAggregateInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoOrderByRelationAggregateInput(
          $count: $enumDecodeNullable(_$SortOrderEnumMap, json['_count']),
        );

Map<String, dynamic> _$MedicamentoOrderByRelationAggregateInputToJson(
    MedicamentoOrderByRelationAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('_count', _$SortOrderEnumMap[instance.$count]);
  return val;
}

BotiquinCountOrderByAggregateInput _$BotiquinCountOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinCountOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
    );

Map<String, dynamic> _$BotiquinCountOrderByAggregateInputToJson(
    BotiquinCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  return val;
}

BotiquinMaxOrderByAggregateInput _$BotiquinMaxOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinMaxOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
    );

Map<String, dynamic> _$BotiquinMaxOrderByAggregateInputToJson(
    BotiquinMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  return val;
}

BotiquinMinOrderByAggregateInput _$BotiquinMinOrderByAggregateInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinMinOrderByAggregateInput(
      id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
      nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
      userId: $enumDecodeNullable(_$SortOrderEnumMap, json['userId']),
    );

Map<String, dynamic> _$BotiquinMinOrderByAggregateInputToJson(
    BotiquinMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('userId', _$SortOrderEnumMap[instance.userId]);
  return val;
}

IntFilter _$IntFilterFromJson(Map<String, dynamic> json) => IntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntFilterToJson(IntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

BotiquinRelationFilter _$BotiquinRelationFilterFromJson(
        Map<String, dynamic> json) =>
    BotiquinRelationFilter(
      $is: json['is'] == null
          ? null
          : BotiquinWhereInput.fromJson(json['is'] as Map<String, dynamic>),
      isNot: json['isNot'] == null
          ? null
          : BotiquinWhereInput.fromJson(json['isNot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinRelationFilterToJson(
    BotiquinRelationFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('is', instance.$is?.toJson());
  writeNotNull('isNot', instance.isNot?.toJson());
  return val;
}

MedicamentoCountOrderByAggregateInput
    _$MedicamentoCountOrderByAggregateInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoCountOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
          botiquinId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['botiquinId']),
        );

Map<String, dynamic> _$MedicamentoCountOrderByAggregateInputToJson(
    MedicamentoCountOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  writeNotNull('botiquinId', _$SortOrderEnumMap[instance.botiquinId]);
  return val;
}

MedicamentoAvgOrderByAggregateInput
    _$MedicamentoAvgOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        MedicamentoAvgOrderByAggregateInput(
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
        );

Map<String, dynamic> _$MedicamentoAvgOrderByAggregateInputToJson(
    MedicamentoAvgOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  return val;
}

MedicamentoMaxOrderByAggregateInput
    _$MedicamentoMaxOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        MedicamentoMaxOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
          botiquinId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['botiquinId']),
        );

Map<String, dynamic> _$MedicamentoMaxOrderByAggregateInputToJson(
    MedicamentoMaxOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  writeNotNull('botiquinId', _$SortOrderEnumMap[instance.botiquinId]);
  return val;
}

MedicamentoMinOrderByAggregateInput
    _$MedicamentoMinOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        MedicamentoMinOrderByAggregateInput(
          id: $enumDecodeNullable(_$SortOrderEnumMap, json['id']),
          nombre: $enumDecodeNullable(_$SortOrderEnumMap, json['nombre']),
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
          botiquinId:
              $enumDecodeNullable(_$SortOrderEnumMap, json['botiquinId']),
        );

Map<String, dynamic> _$MedicamentoMinOrderByAggregateInputToJson(
    MedicamentoMinOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', _$SortOrderEnumMap[instance.id]);
  writeNotNull('nombre', _$SortOrderEnumMap[instance.nombre]);
  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  writeNotNull('botiquinId', _$SortOrderEnumMap[instance.botiquinId]);
  return val;
}

MedicamentoSumOrderByAggregateInput
    _$MedicamentoSumOrderByAggregateInputFromJson(Map<String, dynamic> json) =>
        MedicamentoSumOrderByAggregateInput(
          cantidad: $enumDecodeNullable(_$SortOrderEnumMap, json['cantidad']),
        );

Map<String, dynamic> _$MedicamentoSumOrderByAggregateInputToJson(
    MedicamentoSumOrderByAggregateInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cantidad', _$SortOrderEnumMap[instance.cantidad]);
  return val;
}

IntWithAggregatesFilter _$IntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    IntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IntWithAggregatesFilterToJson(
    IntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

BotiquinCreateNestedOneWithoutUserInput
    _$BotiquinCreateNestedOneWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinCreateNestedOneWithoutUserInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutUserInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutUserInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinCreateNestedOneWithoutUserInputToJson(
    BotiquinCreateNestedOneWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

BotiquinUncheckedCreateNestedOneWithoutUserInput
    _$BotiquinUncheckedCreateNestedOneWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedCreateNestedOneWithoutUserInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutUserInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutUserInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUncheckedCreateNestedOneWithoutUserInputToJson(
    BotiquinUncheckedCreateNestedOneWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

StringFieldUpdateOperationsInput _$StringFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    StringFieldUpdateOperationsInput(
      set: json['set'] as String?,
    );

Map<String, dynamic> _$StringFieldUpdateOperationsInputToJson(
    StringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

NullableStringFieldUpdateOperationsInput
    _$NullableStringFieldUpdateOperationsInputFromJson(
            Map<String, dynamic> json) =>
        NullableStringFieldUpdateOperationsInput(
          set: json['set'] as String?,
        );

Map<String, dynamic> _$NullableStringFieldUpdateOperationsInputToJson(
    NullableStringFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  return val;
}

BotiquinUpdateOneWithoutUserNestedInput
    _$BotiquinUpdateOneWithoutUserNestedInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpdateOneWithoutUserNestedInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutUserInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutUserInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : BotiquinUpsertWithoutUserInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['disconnect'] as Map<String, dynamic>),
          delete: json['delete'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['delete'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : BotiquinUpdateToOneWithWhereWithoutUserInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUpdateOneWithoutUserNestedInputToJson(
    BotiquinUpdateOneWithoutUserNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect?.toJson());
  writeNotNull('delete', instance.delete?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

BotiquinUncheckedUpdateOneWithoutUserNestedInput
    _$BotiquinUncheckedUpdateOneWithoutUserNestedInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedUpdateOneWithoutUserNestedInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutUserInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutUserInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : BotiquinUpsertWithoutUserInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          disconnect: json['disconnect'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['disconnect'] as Map<String, dynamic>),
          delete: json['delete'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['delete'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : BotiquinUpdateToOneWithWhereWithoutUserInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUncheckedUpdateOneWithoutUserNestedInputToJson(
    BotiquinUncheckedUpdateOneWithoutUserNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('disconnect', instance.disconnect?.toJson());
  writeNotNull('delete', instance.delete?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

MedicamentoCreateNestedManyWithoutBotiquinInput
    _$MedicamentoCreateNestedManyWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoCreateNestedManyWithoutBotiquinInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              MedicamentoCreateWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => MedicamentoCreateOrConnectWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : MedicamentoCreateManyBotiquinInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$MedicamentoCreateNestedManyWithoutBotiquinInputToJson(
    MedicamentoCreateNestedManyWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

UserCreateNestedOneWithoutBotiquinInput
    _$UserCreateNestedOneWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateNestedOneWithoutBotiquinInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutBotiquinInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutBotiquinInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateNestedOneWithoutBotiquinInputToJson(
    UserCreateNestedOneWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput
    _$MedicamentoUncheckedCreateNestedManyWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              MedicamentoCreateWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => MedicamentoCreateOrConnectWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : MedicamentoCreateManyBotiquinInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$MedicamentoUncheckedCreateNestedManyWithoutBotiquinInputToJson(
        MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  return val;
}

MedicamentoUpdateManyWithoutBotiquinNestedInput
    _$MedicamentoUpdateManyWithoutBotiquinNestedInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUpdateManyWithoutBotiquinNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              MedicamentoCreateWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => MedicamentoCreateOrConnectWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : MedicamentoCreateManyBotiquinInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpdateManyWithWhereWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              MedicamentoScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic> _$MedicamentoUpdateManyWithoutBotiquinNestedInputToJson(
    MedicamentoUpdateManyWithoutBotiquinNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

UserUpdateOneRequiredWithoutBotiquinNestedInput
    _$UserUpdateOneRequiredWithoutBotiquinNestedInputFromJson(
            Map<String, dynamic> json) =>
        UserUpdateOneRequiredWithoutBotiquinNestedInput(
          create: json['create'] == null
              ? null
              : UserCreateWithoutBotiquinInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : UserCreateOrConnectWithoutBotiquinInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : UserUpsertWithoutBotiquinInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : UserWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : UserUpdateToOneWithWhereWithoutBotiquinInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUpdateOneRequiredWithoutBotiquinNestedInputToJson(
    UserUpdateOneRequiredWithoutBotiquinNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput
    _$MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput(
          create: (json['create'] as List<dynamic>?)?.map((e) =>
              MedicamentoCreateWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          connectOrCreate: (json['connectOrCreate'] as List<dynamic>?)?.map(
              (e) => MedicamentoCreateOrConnectWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          upsert: (json['upsert'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          createMany: json['createMany'] == null
              ? null
              : MedicamentoCreateManyBotiquinInputEnvelope.fromJson(
                  json['createMany'] as Map<String, dynamic>),
          set: (json['set'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          disconnect: (json['disconnect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          delete: (json['delete'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          connect: (json['connect'] as List<dynamic>?)?.map((e) =>
              MedicamentoWhereUniqueInput.fromJson(e as Map<String, dynamic>)),
          update: (json['update'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          updateMany: (json['updateMany'] as List<dynamic>?)?.map((e) =>
              MedicamentoUpdateManyWithWhereWithoutBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          deleteMany: (json['deleteMany'] as List<dynamic>?)?.map((e) =>
              MedicamentoScalarWhereInput.fromJson(e as Map<String, dynamic>)),
        );

Map<String, dynamic>
    _$MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInputToJson(
        MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.map((e) => e.toJson()).toList());
  writeNotNull('connectOrCreate',
      instance.connectOrCreate?.map((e) => e.toJson()).toList());
  writeNotNull('upsert', instance.upsert?.map((e) => e.toJson()).toList());
  writeNotNull('createMany', instance.createMany?.toJson());
  writeNotNull('set', instance.set?.map((e) => e.toJson()).toList());
  writeNotNull(
      'disconnect', instance.disconnect?.map((e) => e.toJson()).toList());
  writeNotNull('delete', instance.delete?.map((e) => e.toJson()).toList());
  writeNotNull('connect', instance.connect?.map((e) => e.toJson()).toList());
  writeNotNull('update', instance.update?.map((e) => e.toJson()).toList());
  writeNotNull(
      'updateMany', instance.updateMany?.map((e) => e.toJson()).toList());
  writeNotNull(
      'deleteMany', instance.deleteMany?.map((e) => e.toJson()).toList());
  return val;
}

BotiquinCreateNestedOneWithoutMedicamentosInput
    _$BotiquinCreateNestedOneWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinCreateNestedOneWithoutMedicamentosInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutMedicamentosInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutMedicamentosInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinCreateNestedOneWithoutMedicamentosInputToJson(
    BotiquinCreateNestedOneWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  return val;
}

IntFieldUpdateOperationsInput _$IntFieldUpdateOperationsInputFromJson(
        Map<String, dynamic> json) =>
    IntFieldUpdateOperationsInput(
      set: json['set'] as int?,
      increment: json['increment'] as int?,
      decrement: json['decrement'] as int?,
      multiply: json['multiply'] as int?,
      divide: json['divide'] as int?,
    );

Map<String, dynamic> _$IntFieldUpdateOperationsInputToJson(
    IntFieldUpdateOperationsInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('set', instance.set);
  writeNotNull('increment', instance.increment);
  writeNotNull('decrement', instance.decrement);
  writeNotNull('multiply', instance.multiply);
  writeNotNull('divide', instance.divide);
  return val;
}

BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput
    _$BotiquinUpdateOneRequiredWithoutMedicamentosNestedInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput(
          create: json['create'] == null
              ? null
              : BotiquinCreateWithoutMedicamentosInput.fromJson(
                  json['create'] as Map<String, dynamic>),
          connectOrCreate: json['connectOrCreate'] == null
              ? null
              : BotiquinCreateOrConnectWithoutMedicamentosInput.fromJson(
                  json['connectOrCreate'] as Map<String, dynamic>),
          upsert: json['upsert'] == null
              ? null
              : BotiquinUpsertWithoutMedicamentosInput.fromJson(
                  json['upsert'] as Map<String, dynamic>),
          connect: json['connect'] == null
              ? null
              : BotiquinWhereUniqueInput.fromJson(
                  json['connect'] as Map<String, dynamic>),
          update: json['update'] == null
              ? null
              : BotiquinUpdateToOneWithWhereWithoutMedicamentosInput.fromJson(
                  json['update'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$BotiquinUpdateOneRequiredWithoutMedicamentosNestedInputToJson(
        BotiquinUpdateOneRequiredWithoutMedicamentosNestedInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('create', instance.create?.toJson());
  writeNotNull('connectOrCreate', instance.connectOrCreate?.toJson());
  writeNotNull('upsert', instance.upsert?.toJson());
  writeNotNull('connect', instance.connect?.toJson());
  writeNotNull('update', instance.update?.toJson());
  return val;
}

NestedStringFilter _$NestedStringFilterFromJson(Map<String, dynamic> json) =>
    NestedStringFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringFilterToJson(NestedStringFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableFilter _$NestedStringNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringNullableFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringNullableFilterToJson(
    NestedStringNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringWithAggregatesFilter _$NestedStringWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedStringWithAggregatesFilter(
      equals: json['equals'] as String?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
      lt: json['lt'] as String?,
      lte: json['lte'] as String?,
      gt: json['gt'] as String?,
      gte: json['gte'] as String?,
      contains: json['contains'] as String?,
      startsWith: json['startsWith'] as String?,
      endsWith: json['endsWith'] as String?,
      not: json['not'] == null
          ? null
          : NestedStringWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedStringFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedStringFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedStringWithAggregatesFilterToJson(
    NestedStringWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntFilter _$NestedIntFilterFromJson(Map<String, dynamic> json) =>
    NestedIntFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntFilterToJson(NestedIntFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedStringNullableWithAggregatesFilter
    _$NestedStringNullableWithAggregatesFilterFromJson(
            Map<String, dynamic> json) =>
        NestedStringNullableWithAggregatesFilter(
          equals: json['equals'] as String?,
          $in: (json['in'] as List<dynamic>?)?.map((e) => e as String),
          notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as String),
          lt: json['lt'] as String?,
          lte: json['lte'] as String?,
          gt: json['gt'] as String?,
          gte: json['gte'] as String?,
          contains: json['contains'] as String?,
          startsWith: json['startsWith'] as String?,
          endsWith: json['endsWith'] as String?,
          not: json['not'] == null
              ? null
              : NestedStringNullableWithAggregatesFilter.fromJson(
                  json['not'] as Map<String, dynamic>),
          $count: json['_count'] == null
              ? null
              : NestedIntNullableFilter.fromJson(
                  json['_count'] as Map<String, dynamic>),
          $min: json['_min'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_min'] as Map<String, dynamic>),
          $max: json['_max'] == null
              ? null
              : NestedStringNullableFilter.fromJson(
                  json['_max'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NestedStringNullableWithAggregatesFilterToJson(
    NestedStringNullableWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('contains', instance.contains);
  writeNotNull('startsWith', instance.startsWith);
  writeNotNull('endsWith', instance.endsWith);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedIntNullableFilter _$NestedIntNullableFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntNullableFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntNullableFilter.fromJson(
              json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntNullableFilterToJson(
    NestedIntNullableFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

NestedIntWithAggregatesFilter _$NestedIntWithAggregatesFilterFromJson(
        Map<String, dynamic> json) =>
    NestedIntWithAggregatesFilter(
      equals: json['equals'] as int?,
      $in: (json['in'] as List<dynamic>?)?.map((e) => e as int),
      notIn: (json['notIn'] as List<dynamic>?)?.map((e) => e as int),
      lt: json['lt'] as int?,
      lte: json['lte'] as int?,
      gt: json['gt'] as int?,
      gte: json['gte'] as int?,
      not: json['not'] == null
          ? null
          : NestedIntWithAggregatesFilter.fromJson(
              json['not'] as Map<String, dynamic>),
      $count: json['_count'] == null
          ? null
          : NestedIntFilter.fromJson(json['_count'] as Map<String, dynamic>),
      $avg: json['_avg'] == null
          ? null
          : NestedFloatFilter.fromJson(json['_avg'] as Map<String, dynamic>),
      $sum: json['_sum'] == null
          ? null
          : NestedIntFilter.fromJson(json['_sum'] as Map<String, dynamic>),
      $min: json['_min'] == null
          ? null
          : NestedIntFilter.fromJson(json['_min'] as Map<String, dynamic>),
      $max: json['_max'] == null
          ? null
          : NestedIntFilter.fromJson(json['_max'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedIntWithAggregatesFilterToJson(
    NestedIntWithAggregatesFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  writeNotNull('_count', instance.$count?.toJson());
  writeNotNull('_avg', instance.$avg?.toJson());
  writeNotNull('_sum', instance.$sum?.toJson());
  writeNotNull('_min', instance.$min?.toJson());
  writeNotNull('_max', instance.$max?.toJson());
  return val;
}

NestedFloatFilter _$NestedFloatFilterFromJson(Map<String, dynamic> json) =>
    NestedFloatFilter(
      equals: (json['equals'] as num?)?.toDouble(),
      $in: (json['in'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      notIn:
          (json['notIn'] as List<dynamic>?)?.map((e) => (e as num).toDouble()),
      lt: (json['lt'] as num?)?.toDouble(),
      lte: (json['lte'] as num?)?.toDouble(),
      gt: (json['gt'] as num?)?.toDouble(),
      gte: (json['gte'] as num?)?.toDouble(),
      not: json['not'] == null
          ? null
          : NestedFloatFilter.fromJson(json['not'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NestedFloatFilterToJson(NestedFloatFilter instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('equals', instance.equals);
  writeNotNull('in', instance.$in?.toList());
  writeNotNull('notIn', instance.notIn?.toList());
  writeNotNull('lt', instance.lt);
  writeNotNull('lte', instance.lte);
  writeNotNull('gt', instance.gt);
  writeNotNull('gte', instance.gte);
  writeNotNull('not', instance.not?.toJson());
  return val;
}

BotiquinCreateWithoutUserInput _$BotiquinCreateWithoutUserInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinCreateWithoutUserInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoCreateNestedManyWithoutBotiquinInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinCreateWithoutUserInputToJson(
    BotiquinCreateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

BotiquinUncheckedCreateWithoutUserInput
    _$BotiquinUncheckedCreateWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedCreateWithoutUserInput(
          id: json['id'] as String?,
          nombre: json['nombre'] as String,
          medicamentos: json['medicamentos'] == null
              ? null
              : MedicamentoUncheckedCreateNestedManyWithoutBotiquinInput
                  .fromJson(json['medicamentos'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUncheckedCreateWithoutUserInputToJson(
    BotiquinUncheckedCreateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

BotiquinCreateOrConnectWithoutUserInput
    _$BotiquinCreateOrConnectWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinCreateOrConnectWithoutUserInput(
          where: BotiquinWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: BotiquinCreateWithoutUserInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinCreateOrConnectWithoutUserInputToJson(
        BotiquinCreateOrConnectWithoutUserInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

BotiquinUpsertWithoutUserInput _$BotiquinUpsertWithoutUserInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUpsertWithoutUserInput(
      update: BotiquinUpdateWithoutUserInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: BotiquinCreateWithoutUserInput.fromJson(
          json['create'] as Map<String, dynamic>),
      where: json['where'] == null
          ? null
          : BotiquinWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUpsertWithoutUserInputToJson(
    BotiquinUpsertWithoutUserInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

BotiquinUpdateToOneWithWhereWithoutUserInput
    _$BotiquinUpdateToOneWithWhereWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpdateToOneWithWhereWithoutUserInput(
          where: json['where'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
          data: BotiquinUpdateWithoutUserInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUpdateToOneWithWhereWithoutUserInputToJson(
    BotiquinUpdateToOneWithWhereWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

BotiquinUpdateWithoutUserInput _$BotiquinUpdateWithoutUserInputFromJson(
        Map<String, dynamic> json) =>
    BotiquinUpdateWithoutUserInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['nombre'] as Map<String, dynamic>),
      medicamentos: json['medicamentos'] == null
          ? null
          : MedicamentoUpdateManyWithoutBotiquinNestedInput.fromJson(
              json['medicamentos'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BotiquinUpdateWithoutUserInputToJson(
    BotiquinUpdateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

BotiquinUncheckedUpdateWithoutUserInput
    _$BotiquinUncheckedUpdateWithoutUserInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedUpdateWithoutUserInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          medicamentos: json['medicamentos'] == null
              ? null
              : MedicamentoUncheckedUpdateManyWithoutBotiquinNestedInput
                  .fromJson(json['medicamentos'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUncheckedUpdateWithoutUserInputToJson(
    BotiquinUncheckedUpdateWithoutUserInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('medicamentos', instance.medicamentos?.toJson());
  return val;
}

MedicamentoCreateWithoutBotiquinInput
    _$MedicamentoCreateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoCreateWithoutBotiquinInput(
          id: json['id'] as String?,
          nombre: json['nombre'] as String,
          cantidad: json['cantidad'] as int,
        );

Map<String, dynamic> _$MedicamentoCreateWithoutBotiquinInputToJson(
    MedicamentoCreateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  return val;
}

MedicamentoUncheckedCreateWithoutBotiquinInput
    _$MedicamentoUncheckedCreateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUncheckedCreateWithoutBotiquinInput(
          id: json['id'] as String?,
          nombre: json['nombre'] as String,
          cantidad: json['cantidad'] as int,
        );

Map<String, dynamic> _$MedicamentoUncheckedCreateWithoutBotiquinInputToJson(
    MedicamentoUncheckedCreateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  return val;
}

MedicamentoCreateOrConnectWithoutBotiquinInput
    _$MedicamentoCreateOrConnectWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoCreateOrConnectWithoutBotiquinInput(
          where: MedicamentoWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: MedicamentoCreateWithoutBotiquinInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoCreateOrConnectWithoutBotiquinInputToJson(
        MedicamentoCreateOrConnectWithoutBotiquinInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

MedicamentoCreateManyBotiquinInputEnvelope
    _$MedicamentoCreateManyBotiquinInputEnvelopeFromJson(
            Map<String, dynamic> json) =>
        MedicamentoCreateManyBotiquinInputEnvelope(
          data: (json['data'] as List<dynamic>).map((e) =>
              MedicamentoCreateManyBotiquinInput.fromJson(
                  e as Map<String, dynamic>)),
          skipDuplicates: json['skipDuplicates'] as bool?,
        );

Map<String, dynamic> _$MedicamentoCreateManyBotiquinInputEnvelopeToJson(
    MedicamentoCreateManyBotiquinInputEnvelope instance) {
  final val = <String, dynamic>{
    'data': instance.data.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('skipDuplicates', instance.skipDuplicates);
  return val;
}

UserCreateWithoutBotiquinInput _$UserCreateWithoutBotiquinInputFromJson(
        Map<String, dynamic> json) =>
    UserCreateWithoutBotiquinInput(
      id: json['id'] as String?,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserCreateWithoutBotiquinInputToJson(
    UserCreateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  return val;
}

UserUncheckedCreateWithoutBotiquinInput
    _$UserUncheckedCreateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedCreateWithoutBotiquinInput(
          id: json['id'] as String?,
          email: json['email'] as String,
          name: json['name'] as String?,
          password: json['password'] as String,
        );

Map<String, dynamic> _$UserUncheckedCreateWithoutBotiquinInputToJson(
    UserUncheckedCreateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['email'] = instance.email;
  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  return val;
}

UserCreateOrConnectWithoutBotiquinInput
    _$UserCreateOrConnectWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        UserCreateOrConnectWithoutBotiquinInput(
          where: UserWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: UserCreateWithoutBotiquinInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserCreateOrConnectWithoutBotiquinInputToJson(
        UserCreateOrConnectWithoutBotiquinInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput
    _$MedicamentoUpsertWithWhereUniqueWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput(
          where: MedicamentoWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          update: MedicamentoUpdateWithoutBotiquinInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: MedicamentoCreateWithoutBotiquinInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$MedicamentoUpsertWithWhereUniqueWithoutBotiquinInputToJson(
            MedicamentoUpsertWithWhereUniqueWithoutBotiquinInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'update': instance.update.toJson(),
          'create': instance.create.toJson(),
        };

MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput
    _$MedicamentoUpdateWithWhereUniqueWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput(
          where: MedicamentoWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: MedicamentoUpdateWithoutBotiquinInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$MedicamentoUpdateWithWhereUniqueWithoutBotiquinInputToJson(
            MedicamentoUpdateWithWhereUniqueWithoutBotiquinInput instance) =>
        <String, dynamic>{
          'where': instance.where.toJson(),
          'data': instance.data.toJson(),
        };

MedicamentoUpdateManyWithWhereWithoutBotiquinInput
    _$MedicamentoUpdateManyWithWhereWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUpdateManyWithWhereWithoutBotiquinInput(
          where: MedicamentoScalarWhereInput.fromJson(
              json['where'] as Map<String, dynamic>),
          data: MedicamentoUpdateManyMutationInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoUpdateManyWithWhereWithoutBotiquinInputToJson(
        MedicamentoUpdateManyWithWhereWithoutBotiquinInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'data': instance.data.toJson(),
    };

MedicamentoScalarWhereInput _$MedicamentoScalarWhereInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoScalarWhereInput(
      AND: (json['AND'] as List<dynamic>?)?.map((e) =>
          MedicamentoScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      OR: (json['OR'] as List<dynamic>?)?.map((e) =>
          MedicamentoScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      NOT: (json['NOT'] as List<dynamic>?)?.map((e) =>
          MedicamentoScalarWhereInput.fromJson(e as Map<String, dynamic>)),
      id: json['id'] == null
          ? null
          : StringFilter.fromJson(json['id'] as Map<String, dynamic>),
      nombre: json['nombre'] == null
          ? null
          : StringFilter.fromJson(json['nombre'] as Map<String, dynamic>),
      cantidad: json['cantidad'] == null
          ? null
          : IntFilter.fromJson(json['cantidad'] as Map<String, dynamic>),
      botiquinId: json['botiquinId'] == null
          ? null
          : StringFilter.fromJson(json['botiquinId'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MedicamentoScalarWhereInputToJson(
    MedicamentoScalarWhereInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('AND', instance.AND?.map((e) => e.toJson()).toList());
  writeNotNull('OR', instance.OR?.map((e) => e.toJson()).toList());
  writeNotNull('NOT', instance.NOT?.map((e) => e.toJson()).toList());
  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  writeNotNull('botiquinId', instance.botiquinId?.toJson());
  return val;
}

UserUpsertWithoutBotiquinInput _$UserUpsertWithoutBotiquinInputFromJson(
        Map<String, dynamic> json) =>
    UserUpsertWithoutBotiquinInput(
      update: UserUpdateWithoutBotiquinInput.fromJson(
          json['update'] as Map<String, dynamic>),
      create: UserCreateWithoutBotiquinInput.fromJson(
          json['create'] as Map<String, dynamic>),
      where: json['where'] == null
          ? null
          : UserWhereInput.fromJson(json['where'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpsertWithoutBotiquinInputToJson(
    UserUpsertWithoutBotiquinInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

UserUpdateToOneWithWhereWithoutBotiquinInput
    _$UserUpdateToOneWithWhereWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        UserUpdateToOneWithWhereWithoutBotiquinInput(
          where: json['where'] == null
              ? null
              : UserWhereInput.fromJson(json['where'] as Map<String, dynamic>),
          data: UserUpdateWithoutBotiquinInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUpdateToOneWithWhereWithoutBotiquinInputToJson(
    UserUpdateToOneWithWhereWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

UserUpdateWithoutBotiquinInput _$UserUpdateWithoutBotiquinInputFromJson(
        Map<String, dynamic> json) =>
    UserUpdateWithoutBotiquinInput(
      id: json['id'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['id'] as Map<String, dynamic>),
      email: json['email'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['email'] as Map<String, dynamic>),
      name: json['name'] == null
          ? null
          : NullableStringFieldUpdateOperationsInput.fromJson(
              json['name'] as Map<String, dynamic>),
      password: json['password'] == null
          ? null
          : StringFieldUpdateOperationsInput.fromJson(
              json['password'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserUpdateWithoutBotiquinInputToJson(
    UserUpdateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

UserUncheckedUpdateWithoutBotiquinInput
    _$UserUncheckedUpdateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        UserUncheckedUpdateWithoutBotiquinInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          email: json['email'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['email'] as Map<String, dynamic>),
          name: json['name'] == null
              ? null
              : NullableStringFieldUpdateOperationsInput.fromJson(
                  json['name'] as Map<String, dynamic>),
          password: json['password'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['password'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$UserUncheckedUpdateWithoutBotiquinInputToJson(
    UserUncheckedUpdateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('email', instance.email?.toJson());
  writeNotNull('name', instance.name?.toJson());
  writeNotNull('password', instance.password?.toJson());
  return val;
}

BotiquinCreateWithoutMedicamentosInput
    _$BotiquinCreateWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinCreateWithoutMedicamentosInput(
          id: json['id'] as String?,
          nombre: json['nombre'] as String,
          user: UserCreateNestedOneWithoutBotiquinInput.fromJson(
              json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinCreateWithoutMedicamentosInputToJson(
    BotiquinCreateWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['user'] = instance.user.toJson();
  return val;
}

BotiquinUncheckedCreateWithoutMedicamentosInput
    _$BotiquinUncheckedCreateWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedCreateWithoutMedicamentosInput(
          id: json['id'] as String?,
          nombre: json['nombre'] as String,
          userId: json['userId'] as String,
        );

Map<String, dynamic> _$BotiquinUncheckedCreateWithoutMedicamentosInputToJson(
    BotiquinUncheckedCreateWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['userId'] = instance.userId;
  return val;
}

BotiquinCreateOrConnectWithoutMedicamentosInput
    _$BotiquinCreateOrConnectWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinCreateOrConnectWithoutMedicamentosInput(
          where: BotiquinWhereUniqueInput.fromJson(
              json['where'] as Map<String, dynamic>),
          create: BotiquinCreateWithoutMedicamentosInput.fromJson(
              json['create'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinCreateOrConnectWithoutMedicamentosInputToJson(
        BotiquinCreateOrConnectWithoutMedicamentosInput instance) =>
    <String, dynamic>{
      'where': instance.where.toJson(),
      'create': instance.create.toJson(),
    };

BotiquinUpsertWithoutMedicamentosInput
    _$BotiquinUpsertWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpsertWithoutMedicamentosInput(
          update: BotiquinUpdateWithoutMedicamentosInput.fromJson(
              json['update'] as Map<String, dynamic>),
          create: BotiquinCreateWithoutMedicamentosInput.fromJson(
              json['create'] as Map<String, dynamic>),
          where: json['where'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUpsertWithoutMedicamentosInputToJson(
    BotiquinUpsertWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{
    'update': instance.update.toJson(),
    'create': instance.create.toJson(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  return val;
}

BotiquinUpdateToOneWithWhereWithoutMedicamentosInput
    _$BotiquinUpdateToOneWithWhereWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpdateToOneWithWhereWithoutMedicamentosInput(
          where: json['where'] == null
              ? null
              : BotiquinWhereInput.fromJson(
                  json['where'] as Map<String, dynamic>),
          data: BotiquinUpdateWithoutMedicamentosInput.fromJson(
              json['data'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$BotiquinUpdateToOneWithWhereWithoutMedicamentosInputToJson(
        BotiquinUpdateToOneWithWhereWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('where', instance.where?.toJson());
  val['data'] = instance.data.toJson();
  return val;
}

BotiquinUpdateWithoutMedicamentosInput
    _$BotiquinUpdateWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUpdateWithoutMedicamentosInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          user: json['user'] == null
              ? null
              : UserUpdateOneRequiredWithoutBotiquinNestedInput.fromJson(
                  json['user'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUpdateWithoutMedicamentosInputToJson(
    BotiquinUpdateWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('user', instance.user?.toJson());
  return val;
}

BotiquinUncheckedUpdateWithoutMedicamentosInput
    _$BotiquinUncheckedUpdateWithoutMedicamentosInputFromJson(
            Map<String, dynamic> json) =>
        BotiquinUncheckedUpdateWithoutMedicamentosInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          userId: json['userId'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['userId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$BotiquinUncheckedUpdateWithoutMedicamentosInputToJson(
    BotiquinUncheckedUpdateWithoutMedicamentosInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('userId', instance.userId?.toJson());
  return val;
}

MedicamentoCreateManyBotiquinInput _$MedicamentoCreateManyBotiquinInputFromJson(
        Map<String, dynamic> json) =>
    MedicamentoCreateManyBotiquinInput(
      id: json['id'] as String?,
      nombre: json['nombre'] as String,
      cantidad: json['cantidad'] as int,
    );

Map<String, dynamic> _$MedicamentoCreateManyBotiquinInputToJson(
    MedicamentoCreateManyBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  val['nombre'] = instance.nombre;
  val['cantidad'] = instance.cantidad;
  return val;
}

MedicamentoUpdateWithoutBotiquinInput
    _$MedicamentoUpdateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUpdateWithoutBotiquinInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          cantidad: json['cantidad'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['cantidad'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoUpdateWithoutBotiquinInputToJson(
    MedicamentoUpdateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  return val;
}

MedicamentoUncheckedUpdateWithoutBotiquinInput
    _$MedicamentoUncheckedUpdateWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUncheckedUpdateWithoutBotiquinInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          cantidad: json['cantidad'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['cantidad'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoUncheckedUpdateWithoutBotiquinInputToJson(
    MedicamentoUncheckedUpdateWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  return val;
}

MedicamentoUncheckedUpdateManyWithoutBotiquinInput
    _$MedicamentoUncheckedUpdateManyWithoutBotiquinInputFromJson(
            Map<String, dynamic> json) =>
        MedicamentoUncheckedUpdateManyWithoutBotiquinInput(
          id: json['id'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['id'] as Map<String, dynamic>),
          nombre: json['nombre'] == null
              ? null
              : StringFieldUpdateOperationsInput.fromJson(
                  json['nombre'] as Map<String, dynamic>),
          cantidad: json['cantidad'] == null
              ? null
              : IntFieldUpdateOperationsInput.fromJson(
                  json['cantidad'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$MedicamentoUncheckedUpdateManyWithoutBotiquinInputToJson(
    MedicamentoUncheckedUpdateManyWithoutBotiquinInput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id?.toJson());
  writeNotNull('nombre', instance.nombre?.toJson());
  writeNotNull('cantidad', instance.cantidad?.toJson());
  return val;
}

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      email: json['email'] as String,
      name: json['name'] as String?,
      password: json['password'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'email': instance.email,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  val['password'] = instance.password;
  return val;
}

Botiquin _$BotiquinFromJson(Map<String, dynamic> json) => Botiquin(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$BotiquinToJson(Botiquin instance) => <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'userId': instance.userId,
    };

Medicamento _$MedicamentoFromJson(Map<String, dynamic> json) => Medicamento(
      id: json['id'] as String,
      nombre: json['nombre'] as String,
      cantidad: json['cantidad'] as int,
      botiquinId: json['botiquinId'] as String,
    );

Map<String, dynamic> _$MedicamentoToJson(Medicamento instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'cantidad': instance.cantidad,
      'botiquinId': instance.botiquinId,
    };

UserGroupByOutputType _$UserGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    UserGroupByOutputType(
      id: json['id'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$UserGroupByOutputTypeToJson(
    UserGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('email', instance.email);
  writeNotNull('name', instance.name);
  writeNotNull('password', instance.password);
  return val;
}

BotiquinGroupByOutputType _$BotiquinGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    BotiquinGroupByOutputType(
      id: json['id'] as String?,
      nombre: json['nombre'] as String?,
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$BotiquinGroupByOutputTypeToJson(
    BotiquinGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('userId', instance.userId);
  return val;
}

MedicamentoGroupByOutputType _$MedicamentoGroupByOutputTypeFromJson(
        Map<String, dynamic> json) =>
    MedicamentoGroupByOutputType(
      id: json['id'] as String?,
      nombre: json['nombre'] as String?,
      cantidad: json['cantidad'] as int?,
      botiquinId: json['botiquinId'] as String?,
    );

Map<String, dynamic> _$MedicamentoGroupByOutputTypeToJson(
    MedicamentoGroupByOutputType instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('id', instance.id);
  writeNotNull('nombre', instance.nombre);
  writeNotNull('cantidad', instance.cantidad);
  writeNotNull('botiquinId', instance.botiquinId);
  return val;
}

AffectedRowsOutput _$AffectedRowsOutputFromJson(Map<String, dynamic> json) =>
    AffectedRowsOutput(
      count: json['count'] as int?,
    );

Map<String, dynamic> _$AffectedRowsOutputToJson(AffectedRowsOutput instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('count', instance.count);
  return val;
}

Map<String, dynamic> _$DatasourcesToJson(Datasources instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('db', instance.db);
  return val;
}
