//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoProfissoes {
  /// Returns a new [DeputadoProfissoes] instance.
  DeputadoProfissoes({
    this.codTipoProfissao,
    this.dataHora,
    this.titulo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codTipoProfissao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHora;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoProfissoes &&
    other.codTipoProfissao == codTipoProfissao &&
    other.dataHora == dataHora &&
    other.titulo == titulo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codTipoProfissao == null ? 0 : codTipoProfissao!.hashCode) +
    (dataHora == null ? 0 : dataHora!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode);

  @override
  String toString() => 'DeputadoProfissoes[codTipoProfissao=$codTipoProfissao, dataHora=$dataHora, titulo=$titulo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codTipoProfissao != null) {
      json[r'codTipoProfissao'] = this.codTipoProfissao;
    } else {
      json[r'codTipoProfissao'] = null;
    }
    if (this.dataHora != null) {
      json[r'dataHora'] = this.dataHora;
    } else {
      json[r'dataHora'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoProfissoes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoProfissoes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoProfissoes(
        codTipoProfissao: mapValueOfType<int>(json, r'codTipoProfissao'),
        dataHora: mapValueOfType<String>(json, r'dataHora'),
        titulo: mapValueOfType<String>(json, r'titulo'),
      );
    }
    return null;
  }

  static List<DeputadoProfissoes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoProfissoes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoProfissoes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoProfissoes> mapFromJson(dynamic json) {
    final map = <String, DeputadoProfissoes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoProfissoes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoProfissoes-objects as value to a dart map
  static Map<String, List<DeputadoProfissoes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoProfissoes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoProfissoes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

