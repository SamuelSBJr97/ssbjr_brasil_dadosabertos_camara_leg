//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Referencia {
  /// Returns a new [Referencia] instance.
  Referencia({
    this.cod,
    this.descricao,
    this.nome,
    this.sigla,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cod;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descricao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sigla;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Referencia &&
    other.cod == cod &&
    other.descricao == descricao &&
    other.nome == nome &&
    other.sigla == sigla;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cod == null ? 0 : cod!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (sigla == null ? 0 : sigla!.hashCode);

  @override
  String toString() => 'Referencia[cod=$cod, descricao=$descricao, nome=$nome, sigla=$sigla]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cod != null) {
      json[r'cod'] = this.cod;
    } else {
      json[r'cod'] = null;
    }
    if (this.descricao != null) {
      json[r'descricao'] = this.descricao;
    } else {
      json[r'descricao'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.sigla != null) {
      json[r'sigla'] = this.sigla;
    } else {
      json[r'sigla'] = null;
    }
    return json;
  }

  /// Returns a new [Referencia] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Referencia? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Referencia(
        cod: mapValueOfType<String>(json, r'cod'),
        descricao: mapValueOfType<String>(json, r'descricao'),
        nome: mapValueOfType<String>(json, r'nome'),
        sigla: mapValueOfType<String>(json, r'sigla'),
      );
    }
    return null;
  }

  static List<Referencia> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Referencia>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Referencia.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Referencia> mapFromJson(dynamic json) {
    final map = <String, Referencia>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Referencia.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Referencia-objects as value to a dart map
  static Map<String, List<Referencia>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Referencia>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Referencia.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

