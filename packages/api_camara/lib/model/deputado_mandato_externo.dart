//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoMandatoExterno {
  /// Returns a new [DeputadoMandatoExterno] instance.
  DeputadoMandatoExterno({
    this.anoFim,
    this.anoInicio,
    this.cargo,
    this.municipio,
    this.siglaPartidoEleicao,
    this.siglaUf,
    this.uriPartidoEleicao,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? anoFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? anoInicio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cargo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? municipio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaPartidoEleicao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaUf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriPartidoEleicao;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoMandatoExterno &&
    other.anoFim == anoFim &&
    other.anoInicio == anoInicio &&
    other.cargo == cargo &&
    other.municipio == municipio &&
    other.siglaPartidoEleicao == siglaPartidoEleicao &&
    other.siglaUf == siglaUf &&
    other.uriPartidoEleicao == uriPartidoEleicao;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anoFim == null ? 0 : anoFim!.hashCode) +
    (anoInicio == null ? 0 : anoInicio!.hashCode) +
    (cargo == null ? 0 : cargo!.hashCode) +
    (municipio == null ? 0 : municipio!.hashCode) +
    (siglaPartidoEleicao == null ? 0 : siglaPartidoEleicao!.hashCode) +
    (siglaUf == null ? 0 : siglaUf!.hashCode) +
    (uriPartidoEleicao == null ? 0 : uriPartidoEleicao!.hashCode);

  @override
  String toString() => 'DeputadoMandatoExterno[anoFim=$anoFim, anoInicio=$anoInicio, cargo=$cargo, municipio=$municipio, siglaPartidoEleicao=$siglaPartidoEleicao, siglaUf=$siglaUf, uriPartidoEleicao=$uriPartidoEleicao]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anoFim != null) {
      json[r'anoFim'] = this.anoFim;
    } else {
      json[r'anoFim'] = null;
    }
    if (this.anoInicio != null) {
      json[r'anoInicio'] = this.anoInicio;
    } else {
      json[r'anoInicio'] = null;
    }
    if (this.cargo != null) {
      json[r'cargo'] = this.cargo;
    } else {
      json[r'cargo'] = null;
    }
    if (this.municipio != null) {
      json[r'municipio'] = this.municipio;
    } else {
      json[r'municipio'] = null;
    }
    if (this.siglaPartidoEleicao != null) {
      json[r'siglaPartidoEleicao'] = this.siglaPartidoEleicao;
    } else {
      json[r'siglaPartidoEleicao'] = null;
    }
    if (this.siglaUf != null) {
      json[r'siglaUf'] = this.siglaUf;
    } else {
      json[r'siglaUf'] = null;
    }
    if (this.uriPartidoEleicao != null) {
      json[r'uriPartidoEleicao'] = this.uriPartidoEleicao;
    } else {
      json[r'uriPartidoEleicao'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoMandatoExterno] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoMandatoExterno? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoMandatoExterno(
        anoFim: mapValueOfType<String>(json, r'anoFim'),
        anoInicio: mapValueOfType<String>(json, r'anoInicio'),
        cargo: mapValueOfType<String>(json, r'cargo'),
        municipio: mapValueOfType<String>(json, r'municipio'),
        siglaPartidoEleicao: mapValueOfType<String>(json, r'siglaPartidoEleicao'),
        siglaUf: mapValueOfType<String>(json, r'siglaUf'),
        uriPartidoEleicao: mapValueOfType<String>(json, r'uriPartidoEleicao'),
      );
    }
    return null;
  }

  static List<DeputadoMandatoExterno> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoMandatoExterno>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoMandatoExterno.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoMandatoExterno> mapFromJson(dynamic json) {
    final map = <String, DeputadoMandatoExterno>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoMandatoExterno.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoMandatoExterno-objects as value to a dart map
  static Map<String, List<DeputadoMandatoExterno>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoMandatoExterno>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoMandatoExterno.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

