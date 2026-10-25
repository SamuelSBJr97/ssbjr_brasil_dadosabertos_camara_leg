//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Gabinete {
  /// Returns a new [Gabinete] instance.
  Gabinete({
    this.andar,
    this.email,
    this.nome,
    this.predio,
    this.sala,
    this.telefone,
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
  String? email;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? telefone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Gabinete &&
    other.andar == andar &&
    other.email == email &&
    other.nome == nome &&
    other.predio == predio &&
    other.sala == sala &&
    other.telefone == telefone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (andar == null ? 0 : andar!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (predio == null ? 0 : predio!.hashCode) +
    (sala == null ? 0 : sala!.hashCode) +
    (telefone == null ? 0 : telefone!.hashCode);

  @override
  String toString() => 'Gabinete[andar=$andar, email=$email, nome=$nome, predio=$predio, sala=$sala, telefone=$telefone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.andar != null) {
      json[r'andar'] = this.andar;
    } else {
      json[r'andar'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
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
    if (this.telefone != null) {
      json[r'telefone'] = this.telefone;
    } else {
      json[r'telefone'] = null;
    }
    return json;
  }

  /// Returns a new [Gabinete] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Gabinete? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Gabinete(
        andar: mapValueOfType<String>(json, r'andar'),
        email: mapValueOfType<String>(json, r'email'),
        nome: mapValueOfType<String>(json, r'nome'),
        predio: mapValueOfType<String>(json, r'predio'),
        sala: mapValueOfType<String>(json, r'sala'),
        telefone: mapValueOfType<String>(json, r'telefone'),
      );
    }
    return null;
  }

  static List<Gabinete> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Gabinete>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Gabinete.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Gabinete> mapFromJson(dynamic json) {
    final map = <String, Gabinete>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Gabinete.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Gabinete-objects as value to a dart map
  static Map<String, List<Gabinete>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Gabinete>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Gabinete.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

