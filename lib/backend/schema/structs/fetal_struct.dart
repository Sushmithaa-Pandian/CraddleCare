// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FetalStruct extends BaseStruct {
  FetalStruct({
    int? fetalHealth,
  }) : _fetalHealth = fetalHealth;

  // "fetal_health" field.
  int? _fetalHealth;
  int get fetalHealth => _fetalHealth ?? 0;
  set fetalHealth(int? val) => _fetalHealth = val;

  void incrementFetalHealth(int amount) => fetalHealth = fetalHealth + amount;

  bool hasFetalHealth() => _fetalHealth != null;

  static FetalStruct fromMap(Map<String, dynamic> data) => FetalStruct(
        fetalHealth: castToType<int>(data['fetal_health']),
      );

  static FetalStruct? maybeFromMap(dynamic data) =>
      data is Map ? FetalStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'fetal_health': _fetalHealth,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'fetal_health': serializeParam(
          _fetalHealth,
          ParamType.int,
        ),
      }.withoutNulls;

  static FetalStruct fromSerializableMap(Map<String, dynamic> data) =>
      FetalStruct(
        fetalHealth: deserializeParam(
          data['fetal_health'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'FetalStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is FetalStruct && fetalHealth == other.fetalHealth;
  }

  @override
  int get hashCode => const ListEquality().hash([fetalHealth]);
}

FetalStruct createFetalStruct({
  int? fetalHealth,
}) =>
    FetalStruct(
      fetalHealth: fetalHealth,
    );
