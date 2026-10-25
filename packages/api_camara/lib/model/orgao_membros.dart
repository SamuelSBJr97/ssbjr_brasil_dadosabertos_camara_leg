//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class OrgaoMembros {
  /// Returns a new [OrgaoMembros] instance.
  OrgaoMembros({
    this.codTitulo,
    this.dataFim,
    this.dataInicio,
    this.email,
    this.id,
    this.idLegislatura,
    this.nome,
    this.siglaPartido,
    this.siglaUf,
    this.titulo,
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
  int? codTitulo;

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
  String? dataInicio;

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
  String? nome;

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
  String? uriPartido;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlFoto;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OrgaoMembros &&
    other.codTitulo == codTitulo &&
    other.dataFim == dataFim &&
    other.dataInicio == dataInicio &&
    other.email == email &&
    other.id == id &&
    other.idLegislatura == idLegislatura &&
    other.nome == nome &&
    other.siglaPartido == siglaPartido &&
    other.siglaUf == siglaUf &&
    other.titulo == titulo &&
    other.uri == uri &&
    other.uriPartido == uriPartido &&
    other.urlFoto == urlFoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codTitulo == null ? 0 : codTitulo!.hashCode) +
    (dataFim == null ? 0 : dataFim!.hashCode) +
    (dataInicio == null ? 0 : dataInicio!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (siglaPartido == null ? 0 : siglaPartido!.hashCode) +
    (siglaUf == null ? 0 : siglaUf!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriPartido == null ? 0 : uriPartido!.hashCode) +
    (urlFoto == null ? 0 : urlFoto!.hashCode);

  @override
  String toString() => 'OrgaoMembros[codTitulo=$codTitulo, dataFim=$dataFim, dataInicio=$dataInicio, email=$email, id=$id, idLegislatura=$idLegislatura, nome=$nome, siglaPartido=$siglaPartido, siglaUf=$siglaUf, titulo=$titulo, uri=$uri, uriPartido=$uriPartido, urlFoto=$urlFoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codTitulo != null) {
      json[r'codTitulo'] = this.codTitulo;
    } else {
      json[r'codTitulo'] = null;
    }
    if (this.dataFim != null) {
      json[r'dataFim'] = this.dataFim;
    } else {
      json[r'dataFim'] = null;
    }
    if (this.dataInicio != null) {
      json[r'dataInicio'] = this.dataInicio;
    } else {
      json[r'dataInicio'] = null;
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
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
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

  /// Returns a new [OrgaoMembros] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OrgaoMembros? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return OrgaoMembros(
        codTitulo: mapValueOfType<int>(json, r'codTitulo'),
        dataFim: mapValueOfType<String>(json, r'dataFim'),
        dataInicio: mapValueOfType<String>(json, r'dataInicio'),
        email: mapValueOfType<String>(json, r'email'),
        id: mapValueOfType<int>(json, r'id'),
        idLegislatura: mapValueOfType<int>(json, r'idLegislatura'),
        nome: mapValueOfType<String>(json, r'nome'),
        siglaPartido: mapValueOfType<String>(json, r'siglaPartido'),
        siglaUf: mapValueOfType<String>(json, r'siglaUf'),
        titulo: mapValueOfType<String>(json, r'titulo'),
        uri: mapValueOfType<String>(json, r'uri'),
        uriPartido: mapValueOfType<String>(json, r'uriPartido'),
        urlFoto: mapValueOfType<String>(json, r'urlFoto'),
      );
    }
    return null;
  }

  static List<OrgaoMembros> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OrgaoMembros>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OrgaoMembros.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OrgaoMembros> mapFromJson(dynamic json) {
    final map = <String, OrgaoMembros>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OrgaoMembros.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OrgaoMembros-objects as value to a dart map
  static Map<String, List<OrgaoMembros>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OrgaoMembros>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OrgaoMembros.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

