//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LocalCamara {
  /// Returns a new [LocalCamara] instance.
  LocalCamara({
    this.andar,
    this.nome,
    this.predio,
    this.sala,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? andar;

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
  String? predio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sala;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LocalCamara &&
    other.andar == andar &&
    other.nome == nome &&
    other.predio == predio &&
    other.sala == sala;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (andar == null ? 0 : andar!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (predio == null ? 0 : predio!.hashCode) +
    (sala == null ? 0 : sala!.hashCode);

  @override
  String toString() => 'LocalCamara[andar=$andar, nome=$nome, predio=$predio, sala=$sala]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.andar != null) {
      json[r'andar'] = this.andar;
    } else {
      json[r'andar'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.predio != null) {
      json[r'predio'] = this.predio;
    } else {
      json[r'predio'] = null;
    }
    if (this.sala != null) {
      json[r'sala'] = this.sala;
    } else {
      json[r'sala'] = null;
    }
    return json;
  }

  /// Returns a new [LocalCamara] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LocalCamara? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LocalCamara(
        andar: mapValueOfType<String>(json, r'andar'),
        nome: mapValueOfType<String>(json, r'nome'),
        predio: mapValueOfType<String>(json, r'predio'),
        sala: mapValueOfType<String>(json, r'sala'),
      );
    }
    return null;
  }

  static List<LocalCamara> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LocalCamara>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LocalCamara.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LocalCamara> mapFromJson(dynamic json) {
    final map = <String, LocalCamara>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LocalCamara.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LocalCamara-objects as value to a dart map
  static Map<String, List<LocalCamara>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LocalCamara>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LocalCamara.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

