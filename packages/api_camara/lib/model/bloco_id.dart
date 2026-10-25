//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class BlocoID {
  /// Returns a new [BlocoID] instance.
  BlocoID({
    this.federacao,
    this.id,
    this.idLegislatura,
    this.nome,
    this.uri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? federacao;

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
  String? idLegislatura;

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
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlocoID &&
    other.federacao == federacao &&
    other.id == id &&
    other.idLegislatura == idLegislatura &&
    other.nome == nome &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (federacao == null ? 0 : federacao!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'BlocoID[federacao=$federacao, id=$id, idLegislatura=$idLegislatura, nome=$nome, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.federacao != null) {
      json[r'federacao'] = this.federacao;
    } else {
      json[r'federacao'] = null;
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
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [BlocoID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlocoID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BlocoID(
        federacao: mapValueOfType<bool>(json, r'federacao'),
        id: mapValueOfType<String>(json, r'id'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        nome: mapValueOfType<String>(json, r'nome'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<BlocoID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlocoID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlocoID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlocoID> mapFromJson(dynamic json) {
    final map = <String, BlocoID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlocoID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlocoID-objects as value to a dart map
  static Map<String, List<BlocoID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlocoID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlocoID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

