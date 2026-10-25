//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UltimoStatus {
  /// Returns a new [UltimoStatus] instance.
  UltimoStatus({
    this.dataStatus,
    this.idLegislatura,
    this.oficioTitulo,
    this.oficioUri,
    this.presidenteNome,
    this.presidenteUri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataStatus;

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
  String? oficioTitulo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presidenteNome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presidenteUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UltimoStatus &&
    other.dataStatus == dataStatus &&
    other.idLegislatura == idLegislatura &&
    other.oficioTitulo == oficioTitulo &&
    other.oficioUri == oficioUri &&
    other.presidenteNome == presidenteNome &&
    other.presidenteUri == presidenteUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataStatus == null ? 0 : dataStatus!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (oficioTitulo == null ? 0 : oficioTitulo!.hashCode) +
    (oficioUri == null ? 0 : oficioUri!.hashCode) +
    (presidenteNome == null ? 0 : presidenteNome!.hashCode) +
    (presidenteUri == null ? 0 : presidenteUri!.hashCode);

  @override
  String toString() => 'UltimoStatus[dataStatus=$dataStatus, idLegislatura=$idLegislatura, oficioTitulo=$oficioTitulo, oficioUri=$oficioUri, presidenteNome=$presidenteNome, presidenteUri=$presidenteUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataStatus != null) {
      json[r'dataStatus'] = this.dataStatus;
    } else {
      json[r'dataStatus'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.oficioTitulo != null) {
      json[r'oficioTitulo'] = this.oficioTitulo;
    } else {
      json[r'oficioTitulo'] = null;
    }
    if (this.oficioUri != null) {
      json[r'oficioUri'] = this.oficioUri;
    } else {
      json[r'oficioUri'] = null;
    }
    if (this.presidenteNome != null) {
      json[r'presidenteNome'] = this.presidenteNome;
    } else {
      json[r'presidenteNome'] = null;
    }
    if (this.presidenteUri != null) {
      json[r'presidenteUri'] = this.presidenteUri;
    } else {
      json[r'presidenteUri'] = null;
    }
    return json;
  }

  /// Returns a new [UltimoStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UltimoStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UltimoStatus(
        dataStatus: mapValueOfType<String>(json, r'dataStatus'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        oficioTitulo: mapValueOfType<String>(json, r'oficioTitulo'),
        oficioUri: mapValueOfType<String>(json, r'oficioUri'),
        presidenteNome: mapValueOfType<String>(json, r'presidenteNome'),
        presidenteUri: mapValueOfType<String>(json, r'presidenteUri'),
      );
    }
    return null;
  }

  static List<UltimoStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UltimoStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UltimoStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UltimoStatus> mapFromJson(dynamic json) {
    final map = <String, UltimoStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UltimoStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UltimoStatus-objects as value to a dart map
  static Map<String, List<UltimoStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UltimoStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UltimoStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

