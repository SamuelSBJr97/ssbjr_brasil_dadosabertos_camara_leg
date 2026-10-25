//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Legislatura {
  /// Returns a new [Legislatura] instance.
  Legislatura({
    this.dataFim,
    this.dataInicio,
    this.id,
    this.uri,
  });

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
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Legislatura &&
    other.dataFim == dataFim &&
    other.dataInicio == dataInicio &&
    other.id == id &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataFim == null ? 0 : dataFim!.hashCode) +
    (dataInicio == null ? 0 : dataInicio!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'Legislatura[dataFim=$dataFim, dataInicio=$dataInicio, id=$id, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [Legislatura] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Legislatura? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Legislatura(
        dataFim: mapValueOfType<String>(json, r'dataFim'),
        dataInicio: mapValueOfType<String>(json, r'dataInicio'),
        id: mapValueOfType<int>(json, r'id'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<Legislatura> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Legislatura>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Legislatura.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Legislatura> mapFromJson(dynamic json) {
    final map = <String, Legislatura>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Legislatura.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Legislatura-objects as value to a dart map
  static Map<String, List<Legislatura>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Legislatura>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Legislatura.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

