//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Grupos {
  /// Returns a new [Grupos] instance.
  Grupos({
    this.anoCriacao,
    this.ativo,
    this.grupoMisto,
    this.id,
    this.nome,
    this.observacoes,
    this.resolucaoTitulo,
    this.resolucaoUri,
    this.subvencionado,
    this.ultimoStatus,
    this.uri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? anoCriacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ativo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? grupoMisto;

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
  String? observacoes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolucaoTitulo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resolucaoUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subvencionado;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UltimoStatus? ultimoStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Grupos &&
    other.anoCriacao == anoCriacao &&
    other.ativo == ativo &&
    other.grupoMisto == grupoMisto &&
    other.id == id &&
    other.nome == nome &&
    other.observacoes == observacoes &&
    other.resolucaoTitulo == resolucaoTitulo &&
    other.resolucaoUri == resolucaoUri &&
    other.subvencionado == subvencionado &&
    other.ultimoStatus == ultimoStatus &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anoCriacao == null ? 0 : anoCriacao!.hashCode) +
    (ativo == null ? 0 : ativo!.hashCode) +
    (grupoMisto == null ? 0 : grupoMisto!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (observacoes == null ? 0 : observacoes!.hashCode) +
    (resolucaoTitulo == null ? 0 : resolucaoTitulo!.hashCode) +
    (resolucaoUri == null ? 0 : resolucaoUri!.hashCode) +
    (subvencionado == null ? 0 : subvencionado!.hashCode) +
    (ultimoStatus == null ? 0 : ultimoStatus!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'Grupos[anoCriacao=$anoCriacao, ativo=$ativo, grupoMisto=$grupoMisto, id=$id, nome=$nome, observacoes=$observacoes, resolucaoTitulo=$resolucaoTitulo, resolucaoUri=$resolucaoUri, subvencionado=$subvencionado, ultimoStatus=$ultimoStatus, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anoCriacao != null) {
      json[r'anoCriacao'] = this.anoCriacao;
    } else {
      json[r'anoCriacao'] = null;
    }
    if (this.ativo != null) {
      json[r'ativo'] = this.ativo;
    } else {
      json[r'ativo'] = null;
    }
    if (this.grupoMisto != null) {
      json[r'grupoMisto'] = this.grupoMisto;
    } else {
      json[r'grupoMisto'] = null;
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
    if (this.observacoes != null) {
      json[r'observacoes'] = this.observacoes;
    } else {
      json[r'observacoes'] = null;
    }
    if (this.resolucaoTitulo != null) {
      json[r'resolucaoTitulo'] = this.resolucaoTitulo;
    } else {
      json[r'resolucaoTitulo'] = null;
    }
    if (this.resolucaoUri != null) {
      json[r'resolucaoUri'] = this.resolucaoUri;
    } else {
      json[r'resolucaoUri'] = null;
    }
    if (this.subvencionado != null) {
      json[r'subvencionado'] = this.subvencionado;
    } else {
      json[r'subvencionado'] = null;
    }
    if (this.ultimoStatus != null) {
      json[r'ultimoStatus'] = this.ultimoStatus;
    } else {
      json[r'ultimoStatus'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [Grupos] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Grupos? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Grupos(
        anoCriacao: mapValueOfType<String>(json, r'anoCriacao'),
        ativo: mapValueOfType<String>(json, r'ativo'),
        grupoMisto: mapValueOfType<String>(json, r'grupoMisto'),
        id: mapValueOfType<int>(json, r'id'),
        nome: mapValueOfType<String>(json, r'nome'),
        observacoes: mapValueOfType<String>(json, r'observacoes'),
        resolucaoTitulo: mapValueOfType<String>(json, r'resolucaoTitulo'),
        resolucaoUri: mapValueOfType<String>(json, r'resolucaoUri'),
        subvencionado: mapValueOfType<String>(json, r'subvencionado'),
        ultimoStatus: UltimoStatus.fromJson(json[r'ultimoStatus']),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<Grupos> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Grupos>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Grupos.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Grupos> mapFromJson(dynamic json) {
    final map = <String, Grupos>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Grupos.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Grupos-objects as value to a dart map
  static Map<String, List<Grupos>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Grupos>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Grupos.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

