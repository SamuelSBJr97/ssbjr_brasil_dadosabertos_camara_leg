//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UltimoStatusID {
  /// Returns a new [UltimoStatusID] instance.
  UltimoStatusID({
    this.dataStatus,
    this.documento,
    this.idLegislatura,
    this.oficioAutorNome,
    this.oficioAutorTipo,
    this.oficioAutorUri,
    this.oficioDataApresentacao,
    this.oficioDataPublicacao,
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
  String? documento;

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
  String? oficioAutorNome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioAutorTipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioAutorUri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioDataApresentacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioDataPublicacao;

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
  bool operator ==(Object other) => identical(this, other) || other is UltimoStatusID &&
    other.dataStatus == dataStatus &&
    other.documento == documento &&
    other.idLegislatura == idLegislatura &&
    other.oficioAutorNome == oficioAutorNome &&
    other.oficioAutorTipo == oficioAutorTipo &&
    other.oficioAutorUri == oficioAutorUri &&
    other.oficioDataApresentacao == oficioDataApresentacao &&
    other.oficioDataPublicacao == oficioDataPublicacao &&
    other.oficioTitulo == oficioTitulo &&
    other.oficioUri == oficioUri &&
    other.presidenteNome == presidenteNome &&
    other.presidenteUri == presidenteUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataStatus == null ? 0 : dataStatus!.hashCode) +
    (documento == null ? 0 : documento!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (oficioAutorNome == null ? 0 : oficioAutorNome!.hashCode) +
    (oficioAutorTipo == null ? 0 : oficioAutorTipo!.hashCode) +
    (oficioAutorUri == null ? 0 : oficioAutorUri!.hashCode) +
    (oficioDataApresentacao == null ? 0 : oficioDataApresentacao!.hashCode) +
    (oficioDataPublicacao == null ? 0 : oficioDataPublicacao!.hashCode) +
    (oficioTitulo == null ? 0 : oficioTitulo!.hashCode) +
    (oficioUri == null ? 0 : oficioUri!.hashCode) +
    (presidenteNome == null ? 0 : presidenteNome!.hashCode) +
    (presidenteUri == null ? 0 : presidenteUri!.hashCode);

  @override
  String toString() => 'UltimoStatusID[dataStatus=$dataStatus, documento=$documento, idLegislatura=$idLegislatura, oficioAutorNome=$oficioAutorNome, oficioAutorTipo=$oficioAutorTipo, oficioAutorUri=$oficioAutorUri, oficioDataApresentacao=$oficioDataApresentacao, oficioDataPublicacao=$oficioDataPublicacao, oficioTitulo=$oficioTitulo, oficioUri=$oficioUri, presidenteNome=$presidenteNome, presidenteUri=$presidenteUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataStatus != null) {
      json[r'dataStatus'] = this.dataStatus;
    } else {
      json[r'dataStatus'] = null;
    }
    if (this.documento != null) {
      json[r'documento'] = this.documento;
    } else {
      json[r'documento'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.oficioAutorNome != null) {
      json[r'oficioAutorNome'] = this.oficioAutorNome;
    } else {
      json[r'oficioAutorNome'] = null;
    }
    if (this.oficioAutorTipo != null) {
      json[r'oficioAutorTipo'] = this.oficioAutorTipo;
    } else {
      json[r'oficioAutorTipo'] = null;
    }
    if (this.oficioAutorUri != null) {
      json[r'oficioAutorUri'] = this.oficioAutorUri;
    } else {
      json[r'oficioAutorUri'] = null;
    }
    if (this.oficioDataApresentacao != null) {
      json[r'oficioDataApresentacao'] = this.oficioDataApresentacao;
    } else {
      json[r'oficioDataApresentacao'] = null;
    }
    if (this.oficioDataPublicacao != null) {
      json[r'oficioDataPublicacao'] = this.oficioDataPublicacao;
    } else {
      json[r'oficioDataPublicacao'] = null;
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

  /// Returns a new [UltimoStatusID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UltimoStatusID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UltimoStatusID(
        dataStatus: mapValueOfType<String>(json, r'dataStatus'),
        documento: mapValueOfType<String>(json, r'documento'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        oficioAutorNome: mapValueOfType<String>(json, r'oficioAutorNome'),
        oficioAutorTipo: mapValueOfType<String>(json, r'oficioAutorTipo'),
        oficioAutorUri: mapValueOfType<String>(json, r'oficioAutorUri'),
        oficioDataApresentacao: mapValueOfType<String>(json, r'oficioDataApresentacao'),
        oficioDataPublicacao: mapValueOfType<String>(json, r'oficioDataPublicacao'),
        oficioTitulo: mapValueOfType<String>(json, r'oficioTitulo'),
        oficioUri: mapValueOfType<String>(json, r'oficioUri'),
        presidenteNome: mapValueOfType<String>(json, r'presidenteNome'),
        presidenteUri: mapValueOfType<String>(json, r'presidenteUri'),
      );
    }
    return null;
  }

  static List<UltimoStatusID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UltimoStatusID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UltimoStatusID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UltimoStatusID> mapFromJson(dynamic json) {
    final map = <String, UltimoStatusID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UltimoStatusID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UltimoStatusID-objects as value to a dart map
  static Map<String, List<UltimoStatusID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UltimoStatusID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UltimoStatusID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

