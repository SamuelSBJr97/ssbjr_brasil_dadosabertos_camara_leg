//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Membro {
  /// Returns a new [Membro] instance.
  Membro({
    this.cargo,
    this.dataFim,
    this.dataInicio,
    this.idLegislatura,
    this.nome,
    this.ordemEntrada,
    this.tipo,
    this.uri,
  });

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
  String? dataFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataInicio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? idLegislatura;

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
  int? ordemEntrada;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Membro &&
    other.cargo == cargo &&
    other.dataFim == dataFim &&
    other.dataInicio == dataInicio &&
    other.idLegislatura == idLegislatura &&
    other.nome == nome &&
    other.ordemEntrada == ordemEntrada &&
    other.tipo == tipo &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cargo == null ? 0 : cargo!.hashCode) +
    (dataFim == null ? 0 : dataFim!.hashCode) +
    (dataInicio == null ? 0 : dataInicio!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (ordemEntrada == null ? 0 : ordemEntrada!.hashCode) +
    (tipo == null ? 0 : tipo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'Membro[cargo=$cargo, dataFim=$dataFim, dataInicio=$dataInicio, idLegislatura=$idLegislatura, nome=$nome, ordemEntrada=$ordemEntrada, tipo=$tipo, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cargo != null) {
      json[r'cargo'] = this.cargo;
    } else {
      json[r'cargo'] = null;
    }
    if (this.dataFim != null) {
      json[r'dataFim'] = this.dataFim;
    } else {
      json[r'dataFim'] = null;
    }
    if (this.dataInicio != null) {
      json[r'dataInicio'] = this.dataInicio;
    } else {
      json[r'dataInicio'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.ordemEntrada != null) {
      json[r'ordemEntrada'] = this.ordemEntrada;
    } else {
      json[r'ordemEntrada'] = null;
    }
    if (this.tipo != null) {
      json[r'tipo'] = this.tipo;
    } else {
      json[r'tipo'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [Membro] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Membro? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Membro(
        cargo: mapValueOfType<String>(json, r'cargo'),
        dataFim: mapValueOfType<String>(json, r'dataFim'),
        dataInicio: mapValueOfType<String>(json, r'dataInicio'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        nome: mapValueOfType<String>(json, r'nome'),
        ordemEntrada: mapValueOfType<int>(json, r'ordemEntrada'),
        tipo: mapValueOfType<String>(json, r'tipo'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<Membro> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Membro>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Membro.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Membro> mapFromJson(dynamic json) {
    final map = <String, Membro>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Membro.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Membro-objects as value to a dart map
  static Map<String, List<Membro>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Membro>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Membro.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

