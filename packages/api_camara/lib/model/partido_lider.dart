//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartidoLider {
  /// Returns a new [PartidoLider] instance.
  PartidoLider({
    this.idLegislatura,
    this.nome,
    this.siglaPartido,
    this.uf,
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
  String? uf;

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
  bool operator ==(Object other) => identical(this, other) || other is PartidoLider &&
    other.idLegislatura == idLegislatura &&
    other.nome == nome &&
    other.siglaPartido == siglaPartido &&
    other.uf == uf &&
    other.uri == uri &&
    other.uriPartido == uriPartido &&
    other.urlFoto == urlFoto;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (siglaPartido == null ? 0 : siglaPartido!.hashCode) +
    (uf == null ? 0 : uf!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (uriPartido == null ? 0 : uriPartido!.hashCode) +
    (urlFoto == null ? 0 : urlFoto!.hashCode);

  @override
  String toString() => 'PartidoLider[idLegislatura=$idLegislatura, nome=$nome, siglaPartido=$siglaPartido, uf=$uf, uri=$uri, uriPartido=$uriPartido, urlFoto=$urlFoto]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.uf != null) {
      json[r'uf'] = this.uf;
    } else {
      json[r'uf'] = null;
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

  /// Returns a new [PartidoLider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PartidoLider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PartidoLider(
        idLegislatura: mapValueOfType<int>(json, r'idLegislatura'),
        nome: mapValueOfType<String>(json, r'nome'),
        siglaPartido: mapValueOfType<String>(json, r'siglaPartido'),
        uf: mapValueOfType<String>(json, r'uf'),
        uri: mapValueOfType<String>(json, r'uri'),
        uriPartido: mapValueOfType<String>(json, r'uriPartido'),
        urlFoto: mapValueOfType<String>(json, r'urlFoto'),
      );
    }
    return null;
  }

  static List<PartidoLider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PartidoLider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartidoLider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PartidoLider> mapFromJson(dynamic json) {
    final map = <String, PartidoLider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartidoLider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PartidoLider-objects as value to a dart map
  static Map<String, List<PartidoLider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PartidoLider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PartidoLider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

