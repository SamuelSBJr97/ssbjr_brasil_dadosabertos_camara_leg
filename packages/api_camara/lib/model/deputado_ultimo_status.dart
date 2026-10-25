//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoUltimoStatus {
  /// Returns a new [DeputadoUltimoStatus] instance.
  DeputadoUltimoStatus({
    this.condicaoEleitoral,
    this.data,
    this.descricaoStatus,
    this.email,
    this.gabinete,
    this.id,
    this.idLegislatura,
    this.nome,
    this.nomeEleitoral,
    this.siglaPartido,
    this.siglaUf,
    this.situacao,
    this.uri,
    this.uriPartido,
    this.urlFoto,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? condicaoEleitoral;

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
  String? descricaoStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Gabinete? gabinete;

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
  int? idLegislatura;

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
  String? nomeEleitoral;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaPartido;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaUf;

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
  String? uriPartido;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlFoto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoUltimoStatus &&
    other.condicaoEleitoral == condicaoEleitoral &&
    other.data == data &&
    other.descricaoStatus == descricaoStatus &&
    other.email == email &&
    other.gabinete == gabinete &&
    other.id == id &&
    other.idLegislatura == idLegislatura &&
    other.nome == nome &&
    other.nomeEleitoral == nomeEleitoral &&
    other.siglaPartido == siglaPartido &&
    other.siglaUf == siglaUf &&
    other.situacao == situacao &&
    other.uri == uri &&
    other.uriPartido == uriPartido &&
    other.urlFoto == urlFoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (condicaoEleitoral == null ? 0 : condicaoEleitoral!.hashCode) +
    (data == null ? 0 : data!.hashCode) +
    (descricaoStatus == null ? 0 : descricaoStatus!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (gabinete == null ? 0 : gabinete!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (nomeEleitoral == null ? 0 : nomeEleitoral!.hashCode) +
    (siglaPartido == null ? 0 : siglaPartido!.hashCode) +
    (siglaUf == null ? 0 : siglaUf!.hashCode) +
    (situacao == null ? 0 : situacao!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriPartido == null ? 0 : uriPartido!.hashCode) +
    (urlFoto == null ? 0 : urlFoto!.hashCode);

  @override
  String toString() => 'DeputadoUltimoStatus[condicaoEleitoral=$condicaoEleitoral, data=$data, descricaoStatus=$descricaoStatus, email=$email, gabinete=$gabinete, id=$id, idLegislatura=$idLegislatura, nome=$nome, nomeEleitoral=$nomeEleitoral, siglaPartido=$siglaPartido, siglaUf=$siglaUf, situacao=$situacao, uri=$uri, uriPartido=$uriPartido, urlFoto=$urlFoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.condicaoEleitoral != null) {
      json[r'condicaoEleitoral'] = this.condicaoEleitoral;
    } else {
      json[r'condicaoEleitoral'] = null;
    }
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.descricaoStatus != null) {
      json[r'descricaoStatus'] = this.descricaoStatus;
    } else {
      json[r'descricaoStatus'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.gabinete != null) {
      json[r'gabinete'] = this.gabinete;
    } else {
      json[r'gabinete'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.nomeEleitoral != null) {
      json[r'nomeEleitoral'] = this.nomeEleitoral;
    } else {
      json[r'nomeEleitoral'] = null;
    }
    if (this.siglaPartido != null) {
      json[r'siglaPartido'] = this.siglaPartido;
    } else {
      json[r'siglaPartido'] = null;
    }
    if (this.siglaUf != null) {
      json[r'siglaUf'] = this.siglaUf;
    } else {
      json[r'siglaUf'] = null;
    }
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
    if (this.uriPartido != null) {
      json[r'uriPartido'] = this.uriPartido;
    } else {
      json[r'uriPartido'] = null;
    }
    if (this.urlFoto != null) {
      json[r'urlFoto'] = this.urlFoto;
    } else {
      json[r'urlFoto'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoUltimoStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoUltimoStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoUltimoStatus(
        condicaoEleitoral: mapValueOfType<String>(json, r'condicaoEleitoral'),
        data: mapValueOfType<String>(json, r'data'),
        descricaoStatus: mapValueOfType<String>(json, r'descricaoStatus'),
        email: mapValueOfType<String>(json, r'email'),
        gabinete: Gabinete.fromJson(json[r'gabinete']),
        id: mapValueOfType<int>(json, r'id'),
        idLegislatura: mapValueOfType<int>(json, r'idLegislatura'),
        nome: mapValueOfType<String>(json, r'nome'),
        nomeEleitoral: mapValueOfType<String>(json, r'nomeEleitoral'),
        siglaPartido: mapValueOfType<String>(json, r'siglaPartido'),
        siglaUf: mapValueOfType<String>(json, r'siglaUf'),
        situacao: mapValueOfType<String>(json, r'situacao'),
        uri: mapValueOfType<String>(json, r'uri'),
        uriPartido: mapValueOfType<String>(json, r'uriPartido'),
        urlFoto: mapValueOfType<String>(json, r'urlFoto'),
      );
    }
    return null;
  }

  static List<DeputadoUltimoStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoUltimoStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoUltimoStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoUltimoStatus> mapFromJson(dynamic json) {
    final map = <String, DeputadoUltimoStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoUltimoStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoUltimoStatus-objects as value to a dart map
  static Map<String, List<DeputadoUltimoStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoUltimoStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoUltimoStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

