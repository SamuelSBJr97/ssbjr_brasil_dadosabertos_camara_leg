//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FrenteID {
  /// Returns a new [FrenteID] instance.
  FrenteID({
    this.coordenador,
    this.email,
    this.id,
    this.idLegislatura,
    this.idSituacao,
    this.keywords,
    this.situacao,
    this.telefone,
    this.titulo,
    this.uri,
    this.urlDocumento,
    this.urlWebsite,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Deputado? coordenador;

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
  int? idSituacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keywords;

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
  String? telefone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

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
  String? urlDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlWebsite;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FrenteID &&
    other.coordenador == coordenador &&
    other.email == email &&
    other.id == id &&
    other.idLegislatura == idLegislatura &&
    other.idSituacao == idSituacao &&
    other.keywords == keywords &&
    other.situacao == situacao &&
    other.telefone == telefone &&
    other.titulo == titulo &&
    other.uri == uri &&
    other.urlDocumento == urlDocumento &&
    other.urlWebsite == urlWebsite;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (coordenador == null ? 0 : coordenador!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (idSituacao == null ? 0 : idSituacao!.hashCode) +
    (keywords == null ? 0 : keywords!.hashCode) +
    (situacao == null ? 0 : situacao!.hashCode) +
    (telefone == null ? 0 : telefone!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (urlDocumento == null ? 0 : urlDocumento!.hashCode) +
    (urlWebsite == null ? 0 : urlWebsite!.hashCode);

  @override
  String toString() => 'FrenteID[coordenador=$coordenador, email=$email, id=$id, idLegislatura=$idLegislatura, idSituacao=$idSituacao, keywords=$keywords, situacao=$situacao, telefone=$telefone, titulo=$titulo, uri=$uri, urlDocumento=$urlDocumento, urlWebsite=$urlWebsite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.coordenador != null) {
      json[r'coordenador'] = this.coordenador;
    } else {
      json[r'coordenador'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
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
    if (this.idSituacao != null) {
      json[r'idSituacao'] = this.idSituacao;
    } else {
      json[r'idSituacao'] = null;
    }
    if (this.keywords != null) {
      json[r'keywords'] = this.keywords;
    } else {
      json[r'keywords'] = null;
    }
    if (this.situacao != null) {
      json[r'situacao'] = this.situacao;
    } else {
      json[r'situacao'] = null;
    }
    if (this.telefone != null) {
      json[r'telefone'] = this.telefone;
    } else {
      json[r'telefone'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.urlDocumento != null) {
      json[r'urlDocumento'] = this.urlDocumento;
    } else {
      json[r'urlDocumento'] = null;
    }
    if (this.urlWebsite != null) {
      json[r'urlWebsite'] = this.urlWebsite;
    } else {
      json[r'urlWebsite'] = null;
    }
    return json;
  }

  /// Returns a new [FrenteID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FrenteID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return FrenteID(
        coordenador: Deputado.fromJson(json[r'coordenador']),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<int>(json, r'id'),
        idLegislatura: mapValueOfType<int>(json, r'idLegislatura'),
        idSituacao: mapValueOfType<int>(json, r'idSituacao'),
        keywords: mapValueOfType<String>(json, r'keywords'),
        situacao: mapValueOfType<String>(json, r'situacao'),
        telefone: mapValueOfType<String>(json, r'telefone'),
        titulo: mapValueOfType<String>(json, r'titulo'),
        uri: mapValueOfType<String>(json, r'uri'),
        urlDocumento: mapValueOfType<String>(json, r'urlDocumento'),
        urlWebsite: mapValueOfType<String>(json, r'urlWebsite'),
      );
    }
    return null;
  }

  static List<FrenteID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FrenteID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FrenteID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FrenteID> mapFromJson(dynamic json) {
    final map = <String, FrenteID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FrenteID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FrenteID-objects as value to a dart map
  static Map<String, List<FrenteID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FrenteID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FrenteID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

