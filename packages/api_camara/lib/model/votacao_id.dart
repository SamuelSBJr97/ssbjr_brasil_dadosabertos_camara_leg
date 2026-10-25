//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VotacaoID {
  /// Returns a new [VotacaoID] instance.
  VotacaoID({
    this.aprovacao,
    this.data,
    this.dataHoraRegistro,
    this.dataHoraUltimaAberturaVotacao,
    this.descUltimaAberturaVotacao,
    this.descricao,
    this.efeitosRegistrados = const [],
    this.id,
    this.idEvento,
    this.idOrgao,
    this.objetosPossiveis = const [],
    this.proposicoesAfetadas = const [],
    this.siglaOrgao,
    this.ultimaApresentacaoProposicao,
    this.uri,
    this.uriEvento,
    this.uriOrgao,
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
  String? dataHoraUltimaAberturaVotacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descUltimaAberturaVotacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? descricao;

  List<EfeitosRegistrados> efeitosRegistrados;

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
  int? idEvento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? idOrgao;

  List<ProposicaoRetornoPrincipal> objetosPossiveis;

  List<ProposicaoRetornoPrincipal> proposicoesAfetadas;

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
  UltimaApresentacaoProposicao? ultimaApresentacaoProposicao;

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is VotacaoID &&
    other.aprovacao == aprovacao &&
    other.data == data &&
    other.dataHoraRegistro == dataHoraRegistro &&
    other.dataHoraUltimaAberturaVotacao == dataHoraUltimaAberturaVotacao &&
    other.descUltimaAberturaVotacao == descUltimaAberturaVotacao &&
    other.descricao == descricao &&
    _deepEquality.equals(other.efeitosRegistrados, efeitosRegistrados) &&
    other.id == id &&
    other.idEvento == idEvento &&
    other.idOrgao == idOrgao &&
    _deepEquality.equals(other.objetosPossiveis, objetosPossiveis) &&
    _deepEquality.equals(other.proposicoesAfetadas, proposicoesAfetadas) &&
    other.siglaOrgao == siglaOrgao &&
    other.ultimaApresentacaoProposicao == ultimaApresentacaoProposicao &&
    other.uri == uri &&
    other.uriEvento == uriEvento &&
    other.uriOrgao == uriOrgao;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aprovacao == null ? 0 : aprovacao!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (dataHoraRegistro == null ? 0 : dataHoraRegistro!.hashCode) +
    (dataHoraUltimaAberturaVotacao == null ? 0 : dataHoraUltimaAberturaVotacao!.hashCode) +
    (descUltimaAberturaVotacao == null ? 0 : descUltimaAberturaVotacao!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (efeitosRegistrados.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idEvento == null ? 0 : idEvento!.hashCode) +
    (idOrgao == null ? 0 : idOrgao!.hashCode) +
    (objetosPossiveis.hashCode) +
    (proposicoesAfetadas.hashCode) +
    (siglaOrgao == null ? 0 : siglaOrgao!.hashCode) +
    (ultimaApresentacaoProposicao == null ? 0 : ultimaApresentacaoProposicao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriEvento == null ? 0 : uriEvento!.hashCode) +
    (uriOrgao == null ? 0 : uriOrgao!.hashCode);

  @override
  String toString() => 'VotacaoID[aprovacao=$aprovacao, data=$data, dataHoraRegistro=$dataHoraRegistro, dataHoraUltimaAberturaVotacao=$dataHoraUltimaAberturaVotacao, descUltimaAberturaVotacao=$descUltimaAberturaVotacao, descricao=$descricao, efeitosRegistrados=$efeitosRegistrados, id=$id, idEvento=$idEvento, idOrgao=$idOrgao, objetosPossiveis=$objetosPossiveis, proposicoesAfetadas=$proposicoesAfetadas, siglaOrgao=$siglaOrgao, ultimaApresentacaoProposicao=$ultimaApresentacaoProposicao, uri=$uri, uriEvento=$uriEvento, uriOrgao=$uriOrgao]';

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
    if (this.dataHoraUltimaAberturaVotacao != null) {
      json[r'dataHoraUltimaAberturaVotacao'] = this.dataHoraUltimaAberturaVotacao;
    } else {
      json[r'dataHoraUltimaAberturaVotacao'] = null;
    }
    if (this.descUltimaAberturaVotacao != null) {
      json[r'descUltimaAberturaVotacao'] = this.descUltimaAberturaVotacao;
    } else {
      json[r'descUltimaAberturaVotacao'] = null;
    }
    if (this.descricao != null) {
      json[r'descricao'] = this.descricao;
    } else {
      json[r'descricao'] = null;
    }
      json[r'efeitosRegistrados'] = this.efeitosRegistrados;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idEvento != null) {
      json[r'idEvento'] = this.idEvento;
    } else {
      json[r'idEvento'] = null;
    }
    if (this.idOrgao != null) {
      json[r'idOrgao'] = this.idOrgao;
    } else {
      json[r'idOrgao'] = null;
    }
      json[r'objetosPossiveis'] = this.objetosPossiveis;
      json[r'proposicoesAfetadas'] = this.proposicoesAfetadas;
    if (this.siglaOrgao != null) {
      json[r'siglaOrgao'] = this.siglaOrgao;
    } else {
      json[r'siglaOrgao'] = null;
    }
    if (this.ultimaApresentacaoProposicao != null) {
      json[r'ultimaApresentacaoProposicao'] = this.ultimaApresentacaoProposicao;
    } else {
      json[r'ultimaApresentacaoProposicao'] = null;
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
    return json;
  }

  /// Returns a new [VotacaoID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VotacaoID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VotacaoID(
        aprovacao: mapValueOfType<int>(json, r'aprovacao'),
        data: mapValueOfType<String>(json, r'data'),
        dataHoraRegistro: mapValueOfType<String>(json, r'dataHoraRegistro'),
        dataHoraUltimaAberturaVotacao: mapValueOfType<String>(json, r'dataHoraUltimaAberturaVotacao'),
        descUltimaAberturaVotacao: mapValueOfType<String>(json, r'descUltimaAberturaVotacao'),
        descricao: mapValueOfType<String>(json, r'descricao'),
        efeitosRegistrados: EfeitosRegistrados.listFromJson(json[r'efeitosRegistrados']),
        id: mapValueOfType<String>(json, r'id'),
        idEvento: mapValueOfType<int>(json, r'idEvento'),
        idOrgao: mapValueOfType<int>(json, r'idOrgao'),
        objetosPossiveis: ProposicaoRetornoPrincipal.listFromJson(json[r'objetosPossiveis']),
        proposicoesAfetadas: ProposicaoRetornoPrincipal.listFromJson(json[r'proposicoesAfetadas']),
        siglaOrgao: mapValueOfType<String>(json, r'siglaOrgao'),
        ultimaApresentacaoProposicao: UltimaApresentacaoProposicao.fromJson(json[r'ultimaApresentacaoProposicao']),
        uri: mapValueOfType<String>(json, r'uri'),
        uriEvento: mapValueOfType<String>(json, r'uriEvento'),
        uriOrgao: mapValueOfType<String>(json, r'uriOrgao'),
      );
    }
    return null;
  }

  static List<VotacaoID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VotacaoID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VotacaoID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VotacaoID> mapFromJson(dynamic json) {
    final map = <String, VotacaoID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VotacaoID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VotacaoID-objects as value to a dart map
  static Map<String, List<VotacaoID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VotacaoID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VotacaoID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

