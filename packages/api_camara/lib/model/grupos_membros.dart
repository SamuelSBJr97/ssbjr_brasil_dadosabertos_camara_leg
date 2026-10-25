//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GruposMembros {
  /// Returns a new [GruposMembros] instance.
  GruposMembros({
    this.id,
    this.membros = const [],
    this.nome,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  List<Membro> membros;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nome;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GruposMembros &&
    other.id == id &&
    _deepEquality.equals(other.membros, membros) &&
    other.nome == nome;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (membros.hashCode) +
    (nome == null ? 0 : nome!.hashCode);

  @override
  String toString() => 'GruposMembros[id=$id, membros=$membros, nome=$nome]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'membros'] = this.membros;
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    return json;
  }

  /// Returns a new [GruposMembros] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GruposMembros? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GruposMembros(
        id: mapValueOfType<int>(json, r'id'),
        membros: Membro.listFromJson(json[r'membros']),
        nome: mapValueOfType<String>(json, r'nome'),
      );
    }
    return null;
  }

  static List<GruposMembros> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GruposMembros>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GruposMembros.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GruposMembros> mapFromJson(dynamic json) {
    final map = <String, GruposMembros>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GruposMembros.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GruposMembros-objects as value to a dart map
  static Map<String, List<GruposMembros>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GruposMembros>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GruposMembros.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

