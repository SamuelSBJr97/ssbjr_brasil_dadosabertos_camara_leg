//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartidoIDStatus {
  /// Returns a new [PartidoIDStatus] instance.
  PartidoIDStatus({
    this.data,
    this.idLegislatura,
    this.lider,
    this.situacao,
    this.totalMembros,
    this.totalPosse,
    this.uriMembros,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? data;

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
  PartidoLider? lider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? situacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalMembros;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? totalPosse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriMembros;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartidoIDStatus &&
    other.data == data &&
    other.idLegislatura == idLegislatura &&
    other.lider == lider &&
    other.situacao == situacao &&
    other.totalMembros == totalMembros &&
    other.totalPosse == totalPosse &&
    other.uriMembros == uriMembros;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (lider == null ? 0 : lider!.hashCode) +
    (situacao == null ? 0 : situacao!.hashCode) +
    (totalMembros == null ? 0 : totalMembros!.hashCode) +
    (totalPosse == null ? 0 : totalPosse!.hashCode) +
    (uriMembros == null ? 0 : uriMembros!.hashCode);

  @override
  String toString() => 'PartidoIDStatus[data=$data, idLegislatura=$idLegislatura, lider=$lider, situacao=$situacao, totalMembros=$totalMembros, totalPosse=$totalPosse, uriMembros=$uriMembros]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.lider != null) {
      json[r'lider'] = this.lider;
    } else {
      json[r'lider'] = null;
    }
    if (this.situacao != null) {
      json[r'situacao'] = this.situacao;
    } else {
      json[r'situacao'] = null;
    }
    if (this.totalMembros != null) {
      json[r'totalMembros'] = this.totalMembros;
    } else {
      json[r'totalMembros'] = null;
    }
    if (this.totalPosse != null) {
      json[r'totalPosse'] = this.totalPosse;
    } else {
      json[r'totalPosse'] = null;
    }
    if (this.uriMembros != null) {
      json[r'uriMembros'] = this.uriMembros;
    } else {
      json[r'uriMembros'] = null;
    }
    return json;
  }

  /// Returns a new [PartidoIDStatus] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PartidoIDStatus? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PartidoIDStatus(
        data: mapValueOfType<String>(json, r'data'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        lider: PartidoLider.fromJson(json[r'lider']),
        situacao: mapValueOfType<String>(json, r'situacao'),
        totalMembros: mapValueOfType<String>(json, r'totalMembros'),
        totalPosse: mapValueOfType<String>(json, r'totalPosse'),
        uriMembros: mapValueOfType<String>(json, r'uriMembros'),
      );
    }
    return null;
  }

  static List<PartidoIDStatus> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PartidoIDStatus>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartidoIDStatus.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PartidoIDStatus> mapFromJson(dynamic json) {
    final map = <String, PartidoIDStatus>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartidoIDStatus.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PartidoIDStatus-objects as value to a dart map
  static Map<String, List<PartidoIDStatus>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PartidoIDStatus>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PartidoIDStatus.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

