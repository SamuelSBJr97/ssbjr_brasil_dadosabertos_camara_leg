//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResultadoDeputadoDiscurso {
  /// Returns a new [ResultadoDeputadoDiscurso] instance.
  ResultadoDeputadoDiscurso({
    this.dados = const [],
    this.links = const [],
  });

  List<DeputadoDiscurso> dados;

  List<Link> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResultadoDeputadoDiscurso &&
    _deepEquality.equals(other.dados, dados) &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dados.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'ResultadoDeputadoDiscurso[dados=$dados, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dados'] = this.dados;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [ResultadoDeputadoDiscurso] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResultadoDeputadoDiscurso? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ResultadoDeputadoDiscurso(
        dados: DeputadoDiscurso.listFromJson(json[r'dados']),
        links: Link.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<ResultadoDeputadoDiscurso> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResultadoDeputadoDiscurso>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResultadoDeputadoDiscurso.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResultadoDeputadoDiscurso> mapFromJson(dynamic json) {
    final map = <String, ResultadoDeputadoDiscurso>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultadoDeputadoDiscurso.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResultadoDeputadoDiscurso-objects as value to a dart map
  static Map<String, List<ResultadoDeputadoDiscurso>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResultadoDeputadoDiscurso>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResultadoDeputadoDiscurso.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

