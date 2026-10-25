//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class FaseEvento {
  /// Returns a new [FaseEvento] instance.
  FaseEvento({
    this.dataHoraFim,
    this.dataHoraInicio,
    this.titulo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHoraFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataHoraInicio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FaseEvento &&
    other.dataHoraFim == dataHoraFim &&
    other.dataHoraInicio == dataHoraInicio &&
    other.titulo == titulo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataHoraFim == null ? 0 : dataHoraFim!.hashCode) +
    (dataHoraInicio == null ? 0 : dataHoraInicio!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode);

  @override
  String toString() => 'FaseEvento[dataHoraFim=$dataHoraFim, dataHoraInicio=$dataHoraInicio, titulo=$titulo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataHoraFim != null) {
      json[r'dataHoraFim'] = this.dataHoraFim;
    } else {
      json[r'dataHoraFim'] = null;
    }
    if (this.dataHoraInicio != null) {
      json[r'dataHoraInicio'] = this.dataHoraInicio;
    } else {
      json[r'dataHoraInicio'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    return json;
  }

  /// Returns a new [FaseEvento] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FaseEvento? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return FaseEvento(
        dataHoraFim: mapValueOfType<String>(json, r'dataHoraFim'),
        dataHoraInicio: mapValueOfType<String>(json, r'dataHoraInicio'),
        titulo: mapValueOfType<String>(json, r'titulo'),
      );
    }
    return null;
  }

  static List<FaseEvento> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FaseEvento>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FaseEvento.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FaseEvento> mapFromJson(dynamic json) {
    final map = <String, FaseEvento>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FaseEvento.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FaseEvento-objects as value to a dart map
  static Map<String, List<FaseEvento>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FaseEvento>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FaseEvento.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

