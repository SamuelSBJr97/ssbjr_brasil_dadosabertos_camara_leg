//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Votacao {
  /// Returns a new [Votacao] instance.
  Votacao({
    this.aprovacao,
    this.data,
    this.dataHoraRegistro,
    this.descricao,
    this.id,
    this.proposicaoObjeto,
    this.siglaOrgao,
    this.uri,
    this.uriEvento,
    this.uriOrgao,
    this.uriProposicaoObjeto,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? aprovacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHoraRegistro;

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
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? proposicaoObjeto;

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
  String? uri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriEvento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriProposicaoObjeto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Votacao &&
    other.aprovacao == aprovacao &&
    other.data == data &&
    other.dataHoraRegistro == dataHoraRegistro &&
    other.descricao == descricao &&
    other.id == id &&
    other.proposicaoObjeto == proposicaoObjeto &&
    other.siglaOrgao == siglaOrgao &&
    other.uri == uri &&
    other.uriEvento == uriEvento &&
    other.uriOrgao == uriOrgao &&
    other.uriProposicaoObjeto == uriProposicaoObjeto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aprovacao == null ? 0 : aprovacao!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (dataHoraRegistro == null ? 0 : dataHoraRegistro!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (proposicaoObjeto == null ? 0 : proposicaoObjeto!.hashCode) +
    (siglaOrgao == null ? 0 : siglaOrgao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriEvento == null ? 0 : uriEvento!.hashCode) +
    (uriOrgao == null ? 0 : uriOrgao!.hashCode) +
    (uriProposicaoObjeto == null ? 0 : uriProposicaoObjeto!.hashCode);

  @override
  String toString() => 'Votacao[aprovacao=$aprovacao, data=$data, dataHoraRegistro=$dataHoraRegistro, descricao=$descricao, id=$id, proposicaoObjeto=$proposicaoObjeto, siglaOrgao=$siglaOrgao, uri=$uri, uriEvento=$uriEvento, uriOrgao=$uriOrgao, uriProposicaoObjeto=$uriProposicaoObjeto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aprovacao != null) {
      json[r'aprovacao'] = this.aprovacao;
    } else {
      json[r'aprovacao'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.dataHoraRegistro != null) {
      json[r'dataHoraRegistro'] = this.dataHoraRegistro;
    } else {
      json[r'dataHoraRegistro'] = null;
    }
    if (this.descricao != null) {
      json[r'descricao'] = this.descricao;
    } else {
      json[r'descricao'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.proposicaoObjeto != null) {
      json[r'proposicaoObjeto'] = this.proposicaoObjeto;
    } else {
      json[r'proposicaoObjeto'] = null;
    }
    if (this.siglaOrgao != null) {
      json[r'siglaOrgao'] = this.siglaOrgao;
    } else {
      json[r'siglaOrgao'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.uriEvento != null) {
      json[r'uriEvento'] = this.uriEvento;
    } else {
      json[r'uriEvento'] = null;
    }
    if (this.uriOrgao != null) {
      json[r'uriOrgao'] = this.uriOrgao;
    } else {
      json[r'uriOrgao'] = null;
    }
    if (this.uriProposicaoObjeto != null) {
      json[r'uriProposicaoObjeto'] = this.uriProposicaoObjeto;
    } else {
      json[r'uriProposicaoObjeto'] = null;
    }
    return json;
  }

  /// Returns a new [Votacao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Votacao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Votacao(
        aprovacao: mapValueOfType<int>(json, r'aprovacao'),
        data: mapValueOfType<String>(json, r'data'),
        dataHoraRegistro: mapValueOfType<String>(json, r'dataHoraRegistro'),
        descricao: mapValueOfType<String>(json, r'descricao'),
        id: mapValueOfType<String>(json, r'id'),
        proposicaoObjeto: mapValueOfType<String>(json, r'proposicaoObjeto'),
        siglaOrgao: mapValueOfType<String>(json, r'siglaOrgao'),
        uri: mapValueOfType<String>(json, r'uri'),
        uriEvento: mapValueOfType<String>(json, r'uriEvento'),
        uriOrgao: mapValueOfType<String>(json, r'uriOrgao'),
        uriProposicaoObjeto: mapValueOfType<String>(json, r'uriProposicaoObjeto'),
      );
    }
    return null;
  }

  static List<Votacao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Votacao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Votacao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Votacao> mapFromJson(dynamic json) {
    final map = <String, Votacao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Votacao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Votacao-objects as value to a dart map
  static Map<String, List<Votacao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Votacao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Votacao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

