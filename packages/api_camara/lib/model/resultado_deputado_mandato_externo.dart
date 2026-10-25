//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResultadoDeputadoMandatoExterno {
  /// Returns a new [ResultadoDeputadoMandatoExterno] instance.
  ResultadoDeputadoMandatoExterno({
    this.dados = const [],
    this.links = const [],
  });

  List<DeputadoMandatoExterno> dados;

  List<Link> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResultadoDeputadoMandatoExterno &&
    _deepEquality.equals(other.dados, dados) &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dados.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'ResultadoDeputadoMandatoExterno[dados=$dados, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dados'] = this.dados;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [ResultadoDeputadoMandatoExterno] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResultadoDeputadoMandatoExterno? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ResultadoDeputadoMandatoExterno(
        dados: DeputadoMandatoExterno.listFromJson(json[r'dados']),
        links: Link.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<ResultadoDeputadoMandatoExterno> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResultadoDeputadoMandatoExterno>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResultadoDeputadoMandatoExterno.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResultadoDeputadoMandatoExterno> mapFromJson(dynamic json) {
    final map = <String, ResultadoDeputadoMandatoExterno>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultadoDeputadoMandatoExterno.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResultadoDeputadoMandatoExterno-objects as value to a dart map
  static Map<String, List<ResultadoDeputadoMandatoExterno>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResultadoDeputadoMandatoExterno>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResultadoDeputadoMandatoExterno.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

