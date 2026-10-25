//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReferenciaEvento {
  /// Returns a new [ReferenciaEvento] instance.
  ReferenciaEvento({
    this.codSituacao = const [],
    this.codTipoEvento = const [],
  });

  List<Referencia> codSituacao;

  List<Referencia> codTipoEvento;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenciaEvento &&
    _deepEquality.equals(other.codSituacao, codSituacao) &&
    _deepEquality.equals(other.codTipoEvento, codTipoEvento);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codSituacao.hashCode) +
    (codTipoEvento.hashCode);

  @override
  String toString() => 'ReferenciaEvento[codSituacao=$codSituacao, codTipoEvento=$codTipoEvento]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'codSituacao'] = this.codSituacao;
      json[r'codTipoEvento'] = this.codTipoEvento;
    return json;
  }

  /// Returns a new [ReferenciaEvento] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenciaEvento? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ReferenciaEvento(
        codSituacao: Referencia.listFromJson(json[r'codSituacao']),
        codTipoEvento: Referencia.listFromJson(json[r'codTipoEvento']),
      );
    }
    return null;
  }

  static List<ReferenciaEvento> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenciaEvento>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenciaEvento.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenciaEvento> mapFromJson(dynamic json) {
    final map = <String, ReferenciaEvento>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenciaEvento.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenciaEvento-objects as value to a dart map
  static Map<String, List<ReferenciaEvento>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenciaEvento>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenciaEvento.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

