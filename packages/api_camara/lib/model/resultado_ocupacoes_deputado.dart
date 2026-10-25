//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResultadoOcupacoesDeputado {
  /// Returns a new [ResultadoOcupacoesDeputado] instance.
  ResultadoOcupacoesDeputado({
    this.dados = const [],
    this.links = const [],
  });

  List<DeputadoOcupacoes> dados;

  List<Link> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResultadoOcupacoesDeputado &&
    _deepEquality.equals(other.dados, dados) &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dados.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'ResultadoOcupacoesDeputado[dados=$dados, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'dados'] = this.dados;
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [ResultadoOcupacoesDeputado] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResultadoOcupacoesDeputado? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ResultadoOcupacoesDeputado(
        dados: DeputadoOcupacoes.listFromJson(json[r'dados']),
        links: Link.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<ResultadoOcupacoesDeputado> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResultadoOcupacoesDeputado>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResultadoOcupacoesDeputado.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResultadoOcupacoesDeputado> mapFromJson(dynamic json) {
    final map = <String, ResultadoOcupacoesDeputado>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultadoOcupacoesDeputado.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResultadoOcupacoesDeputado-objects as value to a dart map
  static Map<String, List<ResultadoOcupacoesDeputado>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResultadoOcupacoesDeputado>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResultadoOcupacoesDeputado.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

