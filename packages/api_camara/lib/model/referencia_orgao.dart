//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReferenciaOrgao {
  /// Returns a new [ReferenciaOrgao] instance.
  ReferenciaOrgao({
    this.idSituacao = const [],
    this.idTipoOrgao = const [],
  });

  List<Referencia> idSituacao;

  List<Referencia> idTipoOrgao;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenciaOrgao &&
    _deepEquality.equals(other.idSituacao, idSituacao) &&
    _deepEquality.equals(other.idTipoOrgao, idTipoOrgao);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idSituacao.hashCode) +
    (idTipoOrgao.hashCode);

  @override
  String toString() => 'ReferenciaOrgao[idSituacao=$idSituacao, idTipoOrgao=$idTipoOrgao]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'idSituacao'] = this.idSituacao;
      json[r'idTipoOrgao'] = this.idTipoOrgao;
    return json;
  }

  /// Returns a new [ReferenciaOrgao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenciaOrgao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ReferenciaOrgao(
        idSituacao: Referencia.listFromJson(json[r'idSituacao']),
        idTipoOrgao: Referencia.listFromJson(json[r'idTipoOrgao']),
      );
    }
    return null;
  }

  static List<ReferenciaOrgao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenciaOrgao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenciaOrgao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenciaOrgao> mapFromJson(dynamic json) {
    final map = <String, ReferenciaOrgao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenciaOrgao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenciaOrgao-objects as value to a dart map
  static Map<String, List<ReferenciaOrgao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenciaOrgao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenciaOrgao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

