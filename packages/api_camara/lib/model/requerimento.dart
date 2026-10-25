//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Requerimento {
  /// Returns a new [Requerimento] instance.
  Requerimento({
    this.titulo,
    this.uri,
  });

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

  @override
  bool operator ==(Object other) => identical(this, other) || other is Requerimento &&
    other.titulo == titulo &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (titulo == null ? 0 : titulo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'Requerimento[titulo=$titulo, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    return json;
  }

  /// Returns a new [Requerimento] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Requerimento? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Requerimento(
        titulo: mapValueOfType<String>(json, r'titulo'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<Requerimento> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Requerimento>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Requerimento.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Requerimento> mapFromJson(dynamic json) {
    final map = <String, Requerimento>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Requerimento.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Requerimento-objects as value to a dart map
  static Map<String, List<Requerimento>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Requerimento>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Requerimento.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

