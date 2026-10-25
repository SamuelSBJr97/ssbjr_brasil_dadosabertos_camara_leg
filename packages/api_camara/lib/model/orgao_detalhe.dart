//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrgaoDetalhe {
  /// Returns a new [OrgaoDetalhe] instance.
  OrgaoDetalhe({
    this.apelido,
    this.casa,
    this.codTipoOrgao,
    this.dataFim,
    this.dataFimOriginal,
    this.dataInicio,
    this.dataInstalacao,
    this.id,
    this.nome,
    this.nomePublicacao,
    this.nomeResumido,
    this.sala,
    this.sigla,
    this.tipoOrgao,
    this.uri,
    this.urlWebsite,
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
  String? casa;

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
  String? dataFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataFimOriginal;

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
  String? dataInstalacao;

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
  String? sala;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlWebsite;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgaoDetalhe &&
    other.apelido == apelido &&
    other.casa == casa &&
    other.codTipoOrgao == codTipoOrgao &&
    other.dataFim == dataFim &&
    other.dataFimOriginal == dataFimOriginal &&
    other.dataInicio == dataInicio &&
    other.dataInstalacao == dataInstalacao &&
    other.id == id &&
    other.nome == nome &&
    other.nomePublicacao == nomePublicacao &&
    other.nomeResumido == nomeResumido &&
    other.sala == sala &&
    other.sigla == sigla &&
    other.tipoOrgao == tipoOrgao &&
    other.uri == uri &&
    other.urlWebsite == urlWebsite;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apelido == null ? 0 : apelido!.hashCode) +
    (casa == null ? 0 : casa!.hashCode) +
    (codTipoOrgao == null ? 0 : codTipoOrgao!.hashCode) +
    (dataFim == null ? 0 : dataFim!.hashCode) +
    (dataFimOriginal == null ? 0 : dataFimOriginal!.hashCode) +
    (dataInicio == null ? 0 : dataInicio!.hashCode) +
    (dataInstalacao == null ? 0 : dataInstalacao!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (nomePublicacao == null ? 0 : nomePublicacao!.hashCode) +
    (nomeResumido == null ? 0 : nomeResumido!.hashCode) +
    (sala == null ? 0 : sala!.hashCode) +
    (sigla == null ? 0 : sigla!.hashCode) +
    (tipoOrgao == null ? 0 : tipoOrgao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (urlWebsite == null ? 0 : urlWebsite!.hashCode);

  @override
  String toString() => 'OrgaoDetalhe[apelido=$apelido, casa=$casa, codTipoOrgao=$codTipoOrgao, dataFim=$dataFim, dataFimOriginal=$dataFimOriginal, dataInicio=$dataInicio, dataInstalacao=$dataInstalacao, id=$id, nome=$nome, nomePublicacao=$nomePublicacao, nomeResumido=$nomeResumido, sala=$sala, sigla=$sigla, tipoOrgao=$tipoOrgao, uri=$uri, urlWebsite=$urlWebsite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apelido != null) {
      json[r'apelido'] = this.apelido;
    } else {
      json[r'apelido'] = null;
    }
    if (this.casa != null) {
      json[r'casa'] = this.casa;
    } else {
      json[r'casa'] = null;
    }
    if (this.codTipoOrgao != null) {
      json[r'codTipoOrgao'] = this.codTipoOrgao;
    } else {
      json[r'codTipoOrgao'] = null;
    }
    if (this.dataFim != null) {
      json[r'dataFim'] = this.dataFim;
    } else {
      json[r'dataFim'] = null;
    }
    if (this.dataFimOriginal != null) {
      json[r'dataFimOriginal'] = this.dataFimOriginal;
    } else {
      json[r'dataFimOriginal'] = null;
    }
    if (this.dataInicio != null) {
      json[r'dataInicio'] = this.dataInicio;
    } else {
      json[r'dataInicio'] = null;
    }
    if (this.dataInstalacao != null) {
      json[r'dataInstalacao'] = this.dataInstalacao;
    } else {
      json[r'dataInstalacao'] = null;
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
    if (this.sala != null) {
      json[r'sala'] = this.sala;
    } else {
      json[r'sala'] = null;
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
    if (this.urlWebsite != null) {
      json[r'urlWebsite'] = this.urlWebsite;
    } else {
      json[r'urlWebsite'] = null;
    }
    return json;
  }

  /// Returns a new [OrgaoDetalhe] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgaoDetalhe? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return OrgaoDetalhe(
        apelido: mapValueOfType<String>(json, r'apelido'),
        casa: mapValueOfType<String>(json, r'casa'),
        codTipoOrgao: mapValueOfType<int>(json, r'codTipoOrgao'),
        dataFim: mapValueOfType<String>(json, r'dataFim'),
        dataFimOriginal: mapValueOfType<String>(json, r'dataFimOriginal'),
        dataInicio: mapValueOfType<String>(json, r'dataInicio'),
        dataInstalacao: mapValueOfType<String>(json, r'dataInstalacao'),
        id: mapValueOfType<int>(json, r'id'),
        nome: mapValueOfType<String>(json, r'nome'),
        nomePublicacao: mapValueOfType<String>(json, r'nomePublicacao'),
        nomeResumido: mapValueOfType<String>(json, r'nomeResumido'),
        sala: mapValueOfType<String>(json, r'sala'),
        sigla: mapValueOfType<String>(json, r'sigla'),
        tipoOrgao: mapValueOfType<String>(json, r'tipoOrgao'),
        uri: mapValueOfType<String>(json, r'uri'),
        urlWebsite: mapValueOfType<String>(json, r'urlWebsite'),
      );
    }
    return null;
  }

  static List<OrgaoDetalhe> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgaoDetalhe>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgaoDetalhe.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgaoDetalhe> mapFromJson(dynamic json) {
    final map = <String, OrgaoDetalhe>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgaoDetalhe.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgaoDetalhe-objects as value to a dart map
  static Map<String, List<OrgaoDetalhe>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgaoDetalhe>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgaoDetalhe.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

