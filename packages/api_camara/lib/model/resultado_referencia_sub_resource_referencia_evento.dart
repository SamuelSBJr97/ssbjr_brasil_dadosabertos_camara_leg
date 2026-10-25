//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ResultadoReferenciaSubResourceReferenciaEvento {
  /// Returns a new [ResultadoReferenciaSubResourceReferenciaEvento] instance.
  ResultadoReferenciaSubResourceReferenciaEvento({
    this.dados,
    this.links = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReferenciaEvento? dados;

  List<Link> links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ResultadoReferenciaSubResourceReferenciaEvento &&
    other.dados == dados &&
    _deepEquality.equals(other.links, links);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dados == null ? 0 : dados!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'ResultadoReferenciaSubResourceReferenciaEvento[dados=$dados, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dados != null) {
      json[r'dados'] = this.dados;
    } else {
      json[r'dados'] = null;
    }
      json[r'links'] = this.links;
    return json;
  }

  /// Returns a new [ResultadoReferenciaSubResourceReferenciaEvento] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ResultadoReferenciaSubResourceReferenciaEvento? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ResultadoReferenciaSubResourceReferenciaEvento(
        dados: ReferenciaEvento.fromJson(json[r'dados']),
        links: Link.listFromJson(json[r'links']),
      );
    }
    return null;
  }

  static List<ResultadoReferenciaSubResourceReferenciaEvento> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ResultadoReferenciaSubResourceReferenciaEvento>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ResultadoReferenciaSubResourceReferenciaEvento.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ResultadoReferenciaSubResourceReferenciaEvento> mapFromJson(dynamic json) {
    final map = <String, ResultadoReferenciaSubResourceReferenciaEvento>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ResultadoReferenciaSubResourceReferenciaEvento.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ResultadoReferenciaSubResourceReferenciaEvento-objects as value to a dart map
  static Map<String, List<ResultadoReferenciaSubResourceReferenciaEvento>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ResultadoReferenciaSubResourceReferenciaEvento>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ResultadoReferenciaSubResourceReferenciaEvento.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

