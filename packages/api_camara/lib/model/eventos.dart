//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Eventos {
  /// Returns a new [Eventos] instance.
  Eventos({
    this.dataHoraFim,
    this.dataHoraInicio,
    this.descricao,
    this.descricaoTipo,
    this.id,
    this.localCamara,
    this.localExterno,
    this.orgaos = const [],
    this.situacao,
    this.uri,
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
  String? urlRegistro;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Eventos &&
    other.dataHoraFim == dataHoraFim &&
    other.dataHoraInicio == dataHoraInicio &&
    other.descricao == descricao &&
    other.descricaoTipo == descricaoTipo &&
    other.id == id &&
    other.localCamara == localCamara &&
    other.localExterno == localExterno &&
    _deepEquality.equals(other.orgaos, orgaos) &&
    other.situacao == situacao &&
    other.uri == uri &&
    other.urlRegistro == urlRegistro;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataHoraFim == null ? 0 : dataHoraFim!.hashCode) +
    (dataHoraInicio == null ? 0 : dataHoraInicio!.hashCode) +
    (descricao == null ? 0 : descricao!.hashCode) +
    (descricaoTipo == null ? 0 : descricaoTipo!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (localCamara == null ? 0 : localCamara!.hashCode) +
    (localExterno == null ? 0 : localExterno!.hashCode) +
    (orgaos.hashCode) +
    (situacao == null ? 0 : situacao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (urlRegistro == null ? 0 : urlRegistro!.hashCode);

  @override
  String toString() => 'Eventos[dataHoraFim=$dataHoraFim, dataHoraInicio=$dataHoraInicio, descricao=$descricao, descricaoTipo=$descricaoTipo, id=$id, localCamara=$localCamara, localExterno=$localExterno, orgaos=$orgaos, situacao=$situacao, uri=$uri, urlRegistro=$urlRegistro]';

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
    if (this.urlRegistro != null) {
      json[r'urlRegistro'] = this.urlRegistro;
    } else {
      json[r'urlRegistro'] = null;
    }
    return json;
  }

  /// Returns a new [Eventos] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Eventos? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Eventos(
        dataHoraFim: mapValueOfType<String>(json, r'dataHoraFim'),
        dataHoraInicio: mapValueOfType<String>(json, r'dataHoraInicio'),
        descricao: mapValueOfType<String>(json, r'descricao'),
        descricaoTipo: mapValueOfType<String>(json, r'descricaoTipo'),
        id: mapValueOfType<int>(json, r'id'),
        localCamara: LocalCamara.fromJson(json[r'localCamara']),
        localExterno: mapValueOfType<String>(json, r'localExterno'),
        orgaos: Orgao.listFromJson(json[r'orgaos']),
        situacao: mapValueOfType<String>(json, r'situacao'),
        uri: mapValueOfType<String>(json, r'uri'),
        urlRegistro: mapValueOfType<String>(json, r'urlRegistro'),
      );
    }
    return null;
  }

  static List<Eventos> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Eventos>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Eventos.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Eventos> mapFromJson(dynamic json) {
    final map = <String, Eventos>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Eventos.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Eventos-objects as value to a dart map
  static Map<String, List<Eventos>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Eventos>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Eventos.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

