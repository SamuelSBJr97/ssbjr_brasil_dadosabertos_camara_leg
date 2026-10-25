//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Votos {
  /// Returns a new [Votos] instance.
  Votos({
    this.dataRegistroVoto,
    this.deputado,
    this.tipoVoto,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataRegistroVoto;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Deputado? deputado;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipoVoto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Votos &&
    other.dataRegistroVoto == dataRegistroVoto &&
    other.deputado == deputado &&
    other.tipoVoto == tipoVoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataRegistroVoto == null ? 0 : dataRegistroVoto!.hashCode) +
    (deputado == null ? 0 : deputado!.hashCode) +
    (tipoVoto == null ? 0 : tipoVoto!.hashCode);

  @override
  String toString() => 'Votos[dataRegistroVoto=$dataRegistroVoto, deputado=$deputado, tipoVoto=$tipoVoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataRegistroVoto != null) {
      json[r'dataRegistroVoto'] = this.dataRegistroVoto;
    } else {
      json[r'dataRegistroVoto'] = null;
    }
    if (this.deputado != null) {
      json[r'deputado_'] = this.deputado;
    } else {
      json[r'deputado_'] = null;
    }
    if (this.tipoVoto != null) {
      json[r'tipoVoto'] = this.tipoVoto;
    } else {
      json[r'tipoVoto'] = null;
    }
    return json;
  }

  /// Returns a new [Votos] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Votos? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Votos(
        dataRegistroVoto: mapValueOfType<String>(json, r'dataRegistroVoto'),
        deputado: Deputado.fromJson(json[r'deputado_']),
        tipoVoto: mapValueOfType<String>(json, r'tipoVoto'),
      );
    }
    return null;
  }

  static List<Votos> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Votos>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Votos.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Votos> mapFromJson(dynamic json) {
    final map = <String, Votos>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Votos.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Votos-objects as value to a dart map
  static Map<String, List<Votos>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Votos>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Votos.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

