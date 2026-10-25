//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Orgao {
  /// Returns a new [Orgao] instance.
  Orgao({
    this.apelido,
    this.codTipoOrgao,
    this.id,
    this.nome,
    this.nomePublicacao,
    this.nomeResumido,
    this.sigla,
    this.tipoOrgao,
    this.uri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apelido;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codTipoOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

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
  String? nomePublicacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomeResumido;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sigla;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipoOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Orgao &&
    other.apelido == apelido &&
    other.codTipoOrgao == codTipoOrgao &&
    other.id == id &&
    other.nome == nome &&
    other.nomePublicacao == nomePublicacao &&
    other.nomeResumido == nomeResumido &&
    other.sigla == sigla &&
    other.tipoOrgao == tipoOrgao &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apelido == null ? 0 : apelido!.hashCode) +
    (codTipoOrgao == null ? 0 : codTipoOrgao!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (nomePublicacao == null ? 0 : nomePublicacao!.hashCode) +
    (nomeResumido == null ? 0 : nomeResumido!.hashCode) +
    (sigla == null ? 0 : sigla!.hashCode) +
    (tipoOrgao == null ? 0 : tipoOrgao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'Orgao[apelido=$apelido, codTipoOrgao=$codTipoOrgao, id=$id, nome=$nome, nomePublicacao=$nomePublicacao, nomeResumido=$nomeResumido, sigla=$sigla, tipoOrgao=$tipoOrgao, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apelido != null) {
      json[r'apelido'] = this.apelido;
    } else {
      json[r'apelido'] = null;
    }
    if (this.codTipoOrgao != null) {
      json[r'codTipoOrgao'] = this.codTipoOrgao;
    } else {
      json[r'codTipoOrgao'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.nomePublicacao != null) {
      json[r'nomePublicacao'] = this.nomePublicacao;
    } else {
      json[r'nomePublicacao'] = null;
    }
    if (this.nomeResumido != null) {
      json[r'nomeResumido'] = this.nomeResumido;
    } else {
      json[r'nomeResumido'] = null;
    }
    if (this.sigla != null) {
      json[r'sigla'] = this.sigla;
    } else {
      json[r'sigla'] = null;
    }
    if (this.tipoOrgao != null) {
      json[r'tipoOrgao'] = this.tipoOrgao;
    } else {
      json[r'tipoOrgao'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [Orgao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Orgao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Orgao(
        apelido: mapValueOfType<String>(json, r'apelido'),
        codTipoOrgao: mapValueOfType<int>(json, r'codTipoOrgao'),
        id: mapValueOfType<int>(json, r'id'),
        nome: mapValueOfType<String>(json, r'nome'),
        nomePublicacao: mapValueOfType<String>(json, r'nomePublicacao'),
        nomeResumido: mapValueOfType<String>(json, r'nomeResumido'),
        sigla: mapValueOfType<String>(json, r'sigla'),
        tipoOrgao: mapValueOfType<String>(json, r'tipoOrgao'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<Orgao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Orgao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Orgao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Orgao> mapFromJson(dynamic json) {
    final map = <String, Orgao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Orgao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Orgao-objects as value to a dart map
  static Map<String, List<Orgao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Orgao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Orgao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

