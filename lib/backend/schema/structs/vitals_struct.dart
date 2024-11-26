// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VitalsStruct extends BaseStruct {
  VitalsStruct({
    String? systolicBp,
    String? diastolicBp,
    String? heartRate,
    String? bloodGlucose,
    String? bodyTemp,
  })  : _systolicBp = systolicBp,
        _diastolicBp = diastolicBp,
        _heartRate = heartRate,
        _bloodGlucose = bloodGlucose,
        _bodyTemp = bodyTemp;

  // "systolicBp" field.
  String? _systolicBp;
  String get systolicBp => _systolicBp ?? '';
  set systolicBp(String? val) => _systolicBp = val;

  bool hasSystolicBp() => _systolicBp != null;

  // "diastolicBp" field.
  String? _diastolicBp;
  String get diastolicBp => _diastolicBp ?? '';
  set diastolicBp(String? val) => _diastolicBp = val;

  bool hasDiastolicBp() => _diastolicBp != null;

  // "heartRate" field.
  String? _heartRate;
  String get heartRate => _heartRate ?? '';
  set heartRate(String? val) => _heartRate = val;

  bool hasHeartRate() => _heartRate != null;

  // "bloodGlucose" field.
  String? _bloodGlucose;
  String get bloodGlucose => _bloodGlucose ?? '';
  set bloodGlucose(String? val) => _bloodGlucose = val;

  bool hasBloodGlucose() => _bloodGlucose != null;

  // "bodyTemp" field.
  String? _bodyTemp;
  String get bodyTemp => _bodyTemp ?? '';
  set bodyTemp(String? val) => _bodyTemp = val;

  bool hasBodyTemp() => _bodyTemp != null;

  static VitalsStruct fromMap(Map<String, dynamic> data) => VitalsStruct(
        systolicBp: data['systolicBp'] as String?,
        diastolicBp: data['diastolicBp'] as String?,
        heartRate: data['heartRate'] as String?,
        bloodGlucose: data['bloodGlucose'] as String?,
        bodyTemp: data['bodyTemp'] as String?,
      );

  static VitalsStruct? maybeFromMap(dynamic data) =>
      data is Map ? VitalsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'systolicBp': _systolicBp,
        'diastolicBp': _diastolicBp,
        'heartRate': _heartRate,
        'bloodGlucose': _bloodGlucose,
        'bodyTemp': _bodyTemp,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'systolicBp': serializeParam(
          _systolicBp,
          ParamType.String,
        ),
        'diastolicBp': serializeParam(
          _diastolicBp,
          ParamType.String,
        ),
        'heartRate': serializeParam(
          _heartRate,
          ParamType.String,
        ),
        'bloodGlucose': serializeParam(
          _bloodGlucose,
          ParamType.String,
        ),
        'bodyTemp': serializeParam(
          _bodyTemp,
          ParamType.String,
        ),
      }.withoutNulls;

  static VitalsStruct fromSerializableMap(Map<String, dynamic> data) =>
      VitalsStruct(
        systolicBp: deserializeParam(
          data['systolicBp'],
          ParamType.String,
          false,
        ),
        diastolicBp: deserializeParam(
          data['diastolicBp'],
          ParamType.String,
          false,
        ),
        heartRate: deserializeParam(
          data['heartRate'],
          ParamType.String,
          false,
        ),
        bloodGlucose: deserializeParam(
          data['bloodGlucose'],
          ParamType.String,
          false,
        ),
        bodyTemp: deserializeParam(
          data['bodyTemp'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'VitalsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VitalsStruct &&
        systolicBp == other.systolicBp &&
        diastolicBp == other.diastolicBp &&
        heartRate == other.heartRate &&
        bloodGlucose == other.bloodGlucose &&
        bodyTemp == other.bodyTemp;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([systolicBp, diastolicBp, heartRate, bloodGlucose, bodyTemp]);
}

VitalsStruct createVitalsStruct({
  String? systolicBp,
  String? diastolicBp,
  String? heartRate,
  String? bloodGlucose,
  String? bodyTemp,
}) =>
    VitalsStruct(
      systolicBp: systolicBp,
      diastolicBp: diastolicBp,
      heartRate: heartRate,
      bloodGlucose: bloodGlucose,
      bodyTemp: bodyTemp,
    );
