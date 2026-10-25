//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoID {
  /// Returns a new [DeputadoID] instance.
  DeputadoID({
    this.cpf,
    this.dataFalecimento,
    this.dataNascimento,
    this.escolaridade,
    this.id,
    this.municipioNascimento,
    this.nomeCivil,
    this.redeSocial = const [],
    this.sexo,
    this.ufNascimento,
    this.ultimoStatus,
    this.uri,
    this.urlWebsite,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpf;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataFalecimento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataNascimento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? escolaridade;

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
  String? municipioNascimento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomeCivil;

  List<String> redeSocial;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sexo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ufNascimento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DeputadoUltimoStatus? ultimoStatus;

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
  bool operator ==(Object other) => identical(this, other) || other is DeputadoID &&
    other.cpf == cpf &&
    other.dataFalecimento == dataFalecimento &&
    other.dataNascimento == dataNascimento &&
    other.escolaridade == escolaridade &&
    other.id == id &&
    other.municipioNascimento == municipioNascimento &&
    other.nomeCivil == nomeCivil &&
    _deepEquality.equals(other.redeSocial, redeSocial) &&
    other.sexo == sexo &&
    other.ufNascimento == ufNascimento &&
    other.ultimoStatus == ultimoStatus &&
    other.uri == uri &&
    other.urlWebsite == urlWebsite;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cpf == null ? 0 : cpf!.hashCode) +
    (dataFalecimento == null ? 0 : dataFalecimento!.hashCode) +
    (dataNascimento == null ? 0 : dataNascimento!.hashCode) +
    (escolaridade == null ? 0 : escolaridade!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (municipioNascimento == null ? 0 : municipioNascimento!.hashCode) +
    (nomeCivil == null ? 0 : nomeCivil!.hashCode) +
    (redeSocial.hashCode) +
    (sexo == null ? 0 : sexo!.hashCode) +
    (ufNascimento == null ? 0 : ufNascimento!.hashCode) +
    (ultimoStatus == null ? 0 : ultimoStatus!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (urlWebsite == null ? 0 : urlWebsite!.hashCode);

  @override
  String toString() => 'DeputadoID[cpf=$cpf, dataFalecimento=$dataFalecimento, dataNascimento=$dataNascimento, escolaridade=$escolaridade, id=$id, municipioNascimento=$municipioNascimento, nomeCivil=$nomeCivil, redeSocial=$redeSocial, sexo=$sexo, ufNascimento=$ufNascimento, ultimoStatus=$ultimoStatus, uri=$uri, urlWebsite=$urlWebsite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cpf != null) {
      json[r'cpf'] = this.cpf;
    } else {
      json[r'cpf'] = null;
    }
    if (this.dataFalecimento != null) {
      json[r'dataFalecimento'] = this.dataFalecimento;
    } else {
      json[r'dataFalecimento'] = null;
    }
    if (this.dataNascimento != null) {
      json[r'dataNascimento'] = this.dataNascimento;
    } else {
      json[r'dataNascimento'] = null;
    }
    if (this.escolaridade != null) {
      json[r'escolaridade'] = this.escolaridade;
    } else {
      json[r'escolaridade'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.municipioNascimento != null) {
      json[r'municipioNascimento'] = this.municipioNascimento;
    } else {
      json[r'municipioNascimento'] = null;
    }
    if (this.nomeCivil != null) {
      json[r'nomeCivil'] = this.nomeCivil;
    } else {
      json[r'nomeCivil'] = null;
    }
      json[r'redeSocial'] = this.redeSocial;
    if (this.sexo != null) {
      json[r'sexo'] = this.sexo;
    } else {
      json[r'sexo'] = null;
    }
    if (this.ufNascimento != null) {
      json[r'ufNascimento'] = this.ufNascimento;
    } else {
      json[r'ufNascimento'] = null;
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
    if (this.urlWebsite != null) {
      json[r'urlWebsite'] = this.urlWebsite;
    } else {
      json[r'urlWebsite'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoID(
        cpf: mapValueOfType<String>(json, r'cpf'),
        dataFalecimento: mapValueOfType<String>(json, r'dataFalecimento'),
        dataNascimento: mapValueOfType<String>(json, r'dataNascimento'),
        escolaridade: mapValueOfType<String>(json, r'escolaridade'),
        id: mapValueOfType<int>(json, r'id'),
        municipioNascimento: mapValueOfType<String>(json, r'municipioNascimento'),
        nomeCivil: mapValueOfType<String>(json, r'nomeCivil'),
        redeSocial: json[r'redeSocial'] is Iterable
            ? (json[r'redeSocial'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sexo: mapValueOfType<String>(json, r'sexo'),
        ufNascimento: mapValueOfType<String>(json, r'ufNascimento'),
        ultimoStatus: DeputadoUltimoStatus.fromJson(json[r'ultimoStatus']),
        uri: mapValueOfType<String>(json, r'uri'),
        urlWebsite: mapValueOfType<String>(json, r'urlWebsite'),
      );
    }
    return null;
  }

  static List<DeputadoID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoID> mapFromJson(dynamic json) {
    final map = <String, DeputadoID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoID-objects as value to a dart map
  static Map<String, List<DeputadoID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

