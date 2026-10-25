//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoOrgao {
  /// Returns a new [DeputadoOrgao] instance.
  DeputadoOrgao({
    this.codTitulo,
    this.dataFim,
    this.dataInicio,
    this.idOrgao,
    this.nomeOrgao,
    this.nomePublicacao,
    this.siglaOrgao,
    this.titulo,
    this.uriOrgao,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codTitulo;

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
  int? idOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomeOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomePublicacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriOrgao;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoOrgao &&
    other.codTitulo == codTitulo &&
    other.dataFim == dataFim &&
    other.dataInicio == dataInicio &&
    other.idOrgao == idOrgao &&
    other.nomeOrgao == nomeOrgao &&
    other.nomePublicacao == nomePublicacao &&
    other.siglaOrgao == siglaOrgao &&
    other.titulo == titulo &&
    other.uriOrgao == uriOrgao;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codTitulo == null ? 0 : codTitulo!.hashCode) +
    (dataFim == null ? 0 : dataFim!.hashCode) +
    (dataInicio == null ? 0 : dataInicio!.hashCode) +
    (idOrgao == null ? 0 : idOrgao!.hashCode) +
    (nomeOrgao == null ? 0 : nomeOrgao!.hashCode) +
    (nomePublicacao == null ? 0 : nomePublicacao!.hashCode) +
    (siglaOrgao == null ? 0 : siglaOrgao!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode) +
    (uriOrgao == null ? 0 : uriOrgao!.hashCode);

  @override
  String toString() => 'DeputadoOrgao[codTitulo=$codTitulo, dataFim=$dataFim, dataInicio=$dataInicio, idOrgao=$idOrgao, nomeOrgao=$nomeOrgao, nomePublicacao=$nomePublicacao, siglaOrgao=$siglaOrgao, titulo=$titulo, uriOrgao=$uriOrgao]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codTitulo != null) {
      json[r'codTitulo'] = this.codTitulo;
    } else {
      json[r'codTitulo'] = null;
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
    if (this.idOrgao != null) {
      json[r'idOrgao'] = this.idOrgao;
    } else {
      json[r'idOrgao'] = null;
    }
    if (this.nomeOrgao != null) {
      json[r'nomeOrgao'] = this.nomeOrgao;
    } else {
      json[r'nomeOrgao'] = null;
    }
    if (this.nomePublicacao != null) {
      json[r'nomePublicacao'] = this.nomePublicacao;
    } else {
      json[r'nomePublicacao'] = null;
    }
    if (this.siglaOrgao != null) {
      json[r'siglaOrgao'] = this.siglaOrgao;
    } else {
      json[r'siglaOrgao'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    if (this.uriOrgao != null) {
      json[r'uriOrgao'] = this.uriOrgao;
    } else {
      json[r'uriOrgao'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoOrgao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoOrgao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoOrgao(
        codTitulo: mapValueOfType<String>(json, r'codTitulo'),
        dataFim: mapValueOfType<String>(json, r'dataFim'),
        dataInicio: mapValueOfType<String>(json, r'dataInicio'),
        idOrgao: mapValueOfType<int>(json, r'idOrgao'),
        nomeOrgao: mapValueOfType<String>(json, r'nomeOrgao'),
        nomePublicacao: mapValueOfType<String>(json, r'nomePublicacao'),
        siglaOrgao: mapValueOfType<String>(json, r'siglaOrgao'),
        titulo: mapValueOfType<String>(json, r'titulo'),
        uriOrgao: mapValueOfType<String>(json, r'uriOrgao'),
      );
    }
    return null;
  }

  static List<DeputadoOrgao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoOrgao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoOrgao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoOrgao> mapFromJson(dynamic json) {
    final map = <String, DeputadoOrgao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoOrgao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoOrgao-objects as value to a dart map
  static Map<String, List<DeputadoOrgao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoOrgao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoOrgao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

