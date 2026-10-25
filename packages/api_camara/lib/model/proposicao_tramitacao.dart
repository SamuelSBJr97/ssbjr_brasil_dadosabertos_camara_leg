//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProposicaoTramitacao {
  /// Returns a new [ProposicaoTramitacao] instance.
  ProposicaoTramitacao({
    this.ambito,
    this.apreciacao,
    this.codSituacao,
    this.codTipoTramitacao,
    this.dataHora,
    this.descricaoSituacao,
    this.descricaoTramitacao,
    this.despacho,
    this.regime,
    this.sequencia,
    this.siglaOrgao,
    this.uriOrgao,
    this.uriUltimoRelator,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ambito;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? apreciacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codSituacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codTipoTramitacao;

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
  String? descricaoSituacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descricaoTramitacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? despacho;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequencia;

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
  String? uriOrgao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriUltimoRelator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProposicaoTramitacao &&
    other.ambito == ambito &&
    other.apreciacao == apreciacao &&
    other.codSituacao == codSituacao &&
    other.codTipoTramitacao == codTipoTramitacao &&
    other.dataHora == dataHora &&
    other.descricaoSituacao == descricaoSituacao &&
    other.descricaoTramitacao == descricaoTramitacao &&
    other.despacho == despacho &&
    other.regime == regime &&
    other.sequencia == sequencia &&
    other.siglaOrgao == siglaOrgao &&
    other.uriOrgao == uriOrgao &&
    other.uriUltimoRelator == uriUltimoRelator &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ambito == null ? 0 : ambito!.hashCode) +
    (apreciacao == null ? 0 : apreciacao!.hashCode) +
    (codSituacao == null ? 0 : codSituacao!.hashCode) +
    (codTipoTramitacao == null ? 0 : codTipoTramitacao!.hashCode) +
    (dataHora == null ? 0 : dataHora!.hashCode) +
    (descricaoSituacao == null ? 0 : descricaoSituacao!.hashCode) +
    (descricaoTramitacao == null ? 0 : descricaoTramitacao!.hashCode) +
    (despacho == null ? 0 : despacho!.hashCode) +
    (regime == null ? 0 : regime!.hashCode) +
    (sequencia == null ? 0 : sequencia!.hashCode) +
    (siglaOrgao == null ? 0 : siglaOrgao!.hashCode) +
    (uriOrgao == null ? 0 : uriOrgao!.hashCode) +
    (uriUltimoRelator == null ? 0 : uriUltimoRelator!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ProposicaoTramitacao[ambito=$ambito, apreciacao=$apreciacao, codSituacao=$codSituacao, codTipoTramitacao=$codTipoTramitacao, dataHora=$dataHora, descricaoSituacao=$descricaoSituacao, descricaoTramitacao=$descricaoTramitacao, despacho=$despacho, regime=$regime, sequencia=$sequencia, siglaOrgao=$siglaOrgao, uriOrgao=$uriOrgao, uriUltimoRelator=$uriUltimoRelator, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ambito != null) {
      json[r'ambito'] = this.ambito;
    } else {
      json[r'ambito'] = null;
    }
    if (this.apreciacao != null) {
      json[r'apreciacao'] = this.apreciacao;
    } else {
      json[r'apreciacao'] = null;
    }
    if (this.codSituacao != null) {
      json[r'codSituacao'] = this.codSituacao;
    } else {
      json[r'codSituacao'] = null;
    }
    if (this.codTipoTramitacao != null) {
      json[r'codTipoTramitacao'] = this.codTipoTramitacao;
    } else {
      json[r'codTipoTramitacao'] = null;
    }
    if (this.dataHora != null) {
      json[r'dataHora'] = this.dataHora;
    } else {
      json[r'dataHora'] = null;
    }
    if (this.descricaoSituacao != null) {
      json[r'descricaoSituacao'] = this.descricaoSituacao;
    } else {
      json[r'descricaoSituacao'] = null;
    }
    if (this.descricaoTramitacao != null) {
      json[r'descricaoTramitacao'] = this.descricaoTramitacao;
    } else {
      json[r'descricaoTramitacao'] = null;
    }
    if (this.despacho != null) {
      json[r'despacho'] = this.despacho;
    } else {
      json[r'despacho'] = null;
    }
    if (this.regime != null) {
      json[r'regime'] = this.regime;
    } else {
      json[r'regime'] = null;
    }
    if (this.sequencia != null) {
      json[r'sequencia'] = this.sequencia;
    } else {
      json[r'sequencia'] = null;
    }
    if (this.siglaOrgao != null) {
      json[r'siglaOrgao'] = this.siglaOrgao;
    } else {
      json[r'siglaOrgao'] = null;
    }
    if (this.uriOrgao != null) {
      json[r'uriOrgao'] = this.uriOrgao;
    } else {
      json[r'uriOrgao'] = null;
    }
    if (this.uriUltimoRelator != null) {
      json[r'uriUltimoRelator'] = this.uriUltimoRelator;
    } else {
      json[r'uriUltimoRelator'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ProposicaoTramitacao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProposicaoTramitacao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ProposicaoTramitacao(
        ambito: mapValueOfType<String>(json, r'ambito'),
        apreciacao: mapValueOfType<String>(json, r'apreciacao'),
        codSituacao: mapValueOfType<int>(json, r'codSituacao'),
        codTipoTramitacao: mapValueOfType<String>(json, r'codTipoTramitacao'),
        dataHora: mapValueOfType<String>(json, r'dataHora'),
        descricaoSituacao: mapValueOfType<String>(json, r'descricaoSituacao'),
        descricaoTramitacao: mapValueOfType<String>(json, r'descricaoTramitacao'),
        despacho: mapValueOfType<String>(json, r'despacho'),
        regime: mapValueOfType<String>(json, r'regime'),
        sequencia: mapValueOfType<int>(json, r'sequencia'),
        siglaOrgao: mapValueOfType<String>(json, r'siglaOrgao'),
        uriOrgao: mapValueOfType<String>(json, r'uriOrgao'),
        uriUltimoRelator: mapValueOfType<String>(json, r'uriUltimoRelator'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ProposicaoTramitacao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProposicaoTramitacao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProposicaoTramitacao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProposicaoTramitacao> mapFromJson(dynamic json) {
    final map = <String, ProposicaoTramitacao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProposicaoTramitacao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProposicaoTramitacao-objects as value to a dart map
  static Map<String, List<ProposicaoTramitacao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProposicaoTramitacao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProposicaoTramitacao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

