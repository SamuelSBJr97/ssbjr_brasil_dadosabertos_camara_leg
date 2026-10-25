//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PartidoID {
  /// Returns a new [PartidoID] instance.
  PartidoID({
    this.id,
    this.nome,
    this.numeroEleitoral,
    this.sigla,
    this.status,
    this.uri,
    this.urlFacebook,
    this.urlLogo,
    this.urlWebSite,
  });

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
  String? nome;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? numeroEleitoral;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sigla;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PartidoIDStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlFacebook;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlLogo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlWebSite;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PartidoID &&
    other.id == id &&
    other.nome == nome &&
    other.numeroEleitoral == numeroEleitoral &&
    other.sigla == sigla &&
    other.status == status &&
    other.uri == uri &&
    other.urlFacebook == urlFacebook &&
    other.urlLogo == urlLogo &&
    other.urlWebSite == urlWebSite;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (numeroEleitoral == null ? 0 : numeroEleitoral!.hashCode) +
    (sigla == null ? 0 : sigla!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (uri == null ? 0 : uri!.hashCode) +
    (urlFacebook == null ? 0 : urlFacebook!.hashCode) +
    (urlLogo == null ? 0 : urlLogo!.hashCode) +
    (urlWebSite == null ? 0 : urlWebSite!.hashCode);

  @override
  String toString() => 'PartidoID[id=$id, nome=$nome, numeroEleitoral=$numeroEleitoral, sigla=$sigla, status=$status, uri=$uri, urlFacebook=$urlFacebook, urlLogo=$urlLogo, urlWebSite=$urlWebSite]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.numeroEleitoral != null) {
      json[r'numeroEleitoral'] = this.numeroEleitoral;
    } else {
      json[r'numeroEleitoral'] = null;
    }
    if (this.sigla != null) {
      json[r'sigla'] = this.sigla;
    } else {
      json[r'sigla'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    if (this.urlFacebook != null) {
      json[r'urlFacebook'] = this.urlFacebook;
    } else {
      json[r'urlFacebook'] = null;
    }
    if (this.urlLogo != null) {
      json[r'urlLogo'] = this.urlLogo;
    } else {
      json[r'urlLogo'] = null;
    }
    if (this.urlWebSite != null) {
      json[r'urlWebSite'] = this.urlWebSite;
    } else {
      json[r'urlWebSite'] = null;
    }
    return json;
  }

  /// Returns a new [PartidoID] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PartidoID? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PartidoID(
        id: mapValueOfType<int>(json, r'id'),
        nome: mapValueOfType<String>(json, r'nome'),
        numeroEleitoral: mapValueOfType<int>(json, r'numeroEleitoral'),
        sigla: mapValueOfType<String>(json, r'sigla'),
        status: PartidoIDStatus.fromJson(json[r'status']),
        uri: mapValueOfType<String>(json, r'uri'),
        urlFacebook: mapValueOfType<String>(json, r'urlFacebook'),
        urlLogo: mapValueOfType<String>(json, r'urlLogo'),
        urlWebSite: mapValueOfType<String>(json, r'urlWebSite'),
      );
    }
    return null;
  }

  static List<PartidoID> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PartidoID>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PartidoID.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PartidoID> mapFromJson(dynamic json) {
    final map = <String, PartidoID>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PartidoID.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PartidoID-objects as value to a dart map
  static Map<String, List<PartidoID>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PartidoID>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PartidoID.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

