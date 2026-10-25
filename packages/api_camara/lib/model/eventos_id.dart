//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class EventosID {
  /// Returns a new [EventosID] instance.
  EventosID({
    this.dataHoraFim,
    this.dataHoraInicio,
    this.descricao,
    this.descricaoTipo,
    this.fases,
    this.id,
    this.localCamara,
    this.localExterno,
    this.orgaos = const [],
    this.requerimentos = const [],
    this.situacao,
    this.uri,
    this.uriConvidados,
    this.uriDeputados,
    this.urlDocumentoPauta,
    this.urlRegistro,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHoraFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHoraInicio;

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
  String? descricaoTipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fases;

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
  LocalCamara? localCamara;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localExterno;

  List<Orgao> orgaos;

  List<Requerimento> requerimentos;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? situacao;

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
  String? uriConvidados;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriDeputados;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlDocumentoPauta;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlRegistro;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EventosID &&
    other.dataHoraFim == dataHoraFim &&
    other.dataHoraInicio == dataHoraInicio &&
    other.descricao == descricao &&
    other.descricaoTipo == descricaoTipo &&
    other.fases == fases &&
    other.id == id &&
    other.localCamara == localCamara &&
    other.localExterno == localExterno &&
    _deepEquality.equals(other.orgaos, orgaos) &&
    _deepEquality.equals(other.requerimentos, requerimentos) &&
    other.situacao == situacao &&
    other.uri == uri &&
    other.uriConvidados == uriConvidados &&
    other.uriDeputados == uriDeputados &&
    other.urlDocumentoPauta == urlDocumentoPauta &&
    other.urlRegistro == urlRegistro;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataHoraFim == null ? 0 : dataHoraFim!.hashCode) +
    (dataHoraInicio == null ? 0 : dataHoraInicio!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (descricaoTipo == null ? 0 : descricaoTipo!.hashCode) +
    (fases == null ? 0 : fases!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (localCamara == null ? 0 : localCamara!.hashCode) +
    (localExterno == null ? 0 : localExterno!.hashCode) +
    (orgaos.hashCode) +
    (requerimentos.hashCode) +
    (situacao == null ? 0 : situacao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriConvidados == null ? 0 : uriConvidados!.hashCode) +
    (uriDeputados == null ? 0 : uriDeputados!.hashCode) +
    (urlDocumentoPauta == null ? 0 : urlDocumentoPauta!.hashCode) +
    (urlRegistro == null ? 0 : urlRegistro!.hashCode);

  @override
  String toString() => 'EventosID[dataHoraFim=$dataHoraFim, dataHoraInicio=$dataHoraInicio, descricao=$descricao, descricaoTipo=$descricaoTipo, fases=$fases, id=$id, localCamara=$localCamara, localExterno=$localExterno, orgaos=$orgaos, requerimentos=$requerimentos, situacao=$situacao, uri=$uri, uriConvidados=$uriConvidados, uriDeputados=$uriDeputados, urlDocumentoPauta=$urlDocumentoPauta, urlRegistro=$urlRegistro]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataHoraFim != null) {
      json[r'dataHoraFim'] = this.dataHoraFim;
    } else {
      json[r'dataHoraFim'] = null;
    }
    if (this.dataHoraInicio != null) {
      json[r'dataHoraInicio'] = this.dataHoraInicio;
    } else {
      json[r'dataHoraInicio'] = null;
    }
    if (this.descricao != null) {
      json[r'descricao'] = this.descricao;
    } else {
      json[r'descricao'] = null;
    }
    if (this.descricaoTipo != null) {
      json[r'descricaoTipo'] = this.descricaoTipo;
    } else {
      json[r'descricaoTipo'] = null;
    }
    if (this.fases != null) {
      json[r'fases'] = this.fases;
    } else {
      json[r'fases'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.localCamara != null) {
      json[r'localCamara'] = this.localCamara;
    } else {
      json[r'localCamara'] = null;
    }
    if (this.localExterno != null) {
      json[r'localExterno'] = this.localExterno;
    } else {
      json[r'localExterno'] = null;
    }
      json[r'orgaos'] = this.orgaos;
      json[r'requerimentos'] = this.requerimentos;
    if (this.situacao != null) {
      json[r'situacao'] = this.situacao;
    } else {
      json[r'situacao'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.uriConvidados != null) {
      json[r'uriConvidados'] = this.uriConvidados;
    } else {
      json[r'uriConvidados'] = null;
    }
    if (this.uriDeputados != null) {
      json[r'uriDeputados'] = this.uriDeputados;
    } else {
      json[r'uriDeputados'] = null;
    }
    if (this.urlDocumentoPauta != null) {
      json[r'urlDocumentoPauta'] = this.urlDocumentoPauta;
    } else {
      json[r'urlDocumentoPauta'] = null;
    }
    if (this.urlRegistro != null) {
      json[r'urlRegistro'] = this.urlRegistro;
    } else {
      json[r'urlRegistro'] = null;
    }
    return json;
  }

  /// Returns a new [EventosID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EventosID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return EventosID(
        dataHoraFim: mapValueOfType<String>(json, r'dataHoraFim'),
        dataHoraInicio: mapValueOfType<String>(json, r'dataHoraInicio'),
        descricao: mapValueOfType<String>(json, r'descricao'),
        descricaoTipo: mapValueOfType<String>(json, r'descricaoTipo'),
        fases: mapValueOfType<String>(json, r'fases'),
        id: mapValueOfType<int>(json, r'id'),
        localCamara: LocalCamara.fromJson(json[r'localCamara']),
        localExterno: mapValueOfType<String>(json, r'localExterno'),
        orgaos: Orgao.listFromJson(json[r'orgaos']),
        requerimentos: Requerimento.listFromJson(json[r'requerimentos']),
        situacao: mapValueOfType<String>(json, r'situacao'),
        uri: mapValueOfType<String>(json, r'uri'),
        uriConvidados: mapValueOfType<String>(json, r'uriConvidados'),
        uriDeputados: mapValueOfType<String>(json, r'uriDeputados'),
        urlDocumentoPauta: mapValueOfType<String>(json, r'urlDocumentoPauta'),
        urlRegistro: mapValueOfType<String>(json, r'urlRegistro'),
      );
    }
    return null;
  }

  static List<EventosID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EventosID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EventosID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EventosID> mapFromJson(dynamic json) {
    final map = <String, EventosID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EventosID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EventosID-objects as value to a dart map
  static Map<String, List<EventosID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EventosID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EventosID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

