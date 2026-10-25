//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Historico {
  /// Returns a new [Historico] instance.
  Historico({
    this.dataStatus,
    this.documentoSGM,
    this.idLegislatura,
    this.observacao,
    this.oficioAutor,
    this.oficioAutorTipo,
    this.oficioAutorUri,
    this.oficioDataApresentacao,
    this.oficioDataPublicacao,
    this.oficioTitulo,
    this.presidente,
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
  String? documentoSGM;

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
  String? observacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? oficioAutor;

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
  String? presidente;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? presidenteUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Historico &&
    other.dataStatus == dataStatus &&
    other.documentoSGM == documentoSGM &&
    other.idLegislatura == idLegislatura &&
    other.observacao == observacao &&
    other.oficioAutor == oficioAutor &&
    other.oficioAutorTipo == oficioAutorTipo &&
    other.oficioAutorUri == oficioAutorUri &&
    other.oficioDataApresentacao == oficioDataApresentacao &&
    other.oficioDataPublicacao == oficioDataPublicacao &&
    other.oficioTitulo == oficioTitulo &&
    other.presidente == presidente &&
    other.presidenteUri == presidenteUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataStatus == null ? 0 : dataStatus!.hashCode) +
    (documentoSGM == null ? 0 : documentoSGM!.hashCode) +
    (idLegislatura == null ? 0 : idLegislatura!.hashCode) +
    (observacao == null ? 0 : observacao!.hashCode) +
    (oficioAutor == null ? 0 : oficioAutor!.hashCode) +
    (oficioAutorTipo == null ? 0 : oficioAutorTipo!.hashCode) +
    (oficioAutorUri == null ? 0 : oficioAutorUri!.hashCode) +
    (oficioDataApresentacao == null ? 0 : oficioDataApresentacao!.hashCode) +
    (oficioDataPublicacao == null ? 0 : oficioDataPublicacao!.hashCode) +
    (oficioTitulo == null ? 0 : oficioTitulo!.hashCode) +
    (presidente == null ? 0 : presidente!.hashCode) +
    (presidenteUri == null ? 0 : presidenteUri!.hashCode);

  @override
  String toString() => 'Historico[dataStatus=$dataStatus, documentoSGM=$documentoSGM, idLegislatura=$idLegislatura, observacao=$observacao, oficioAutor=$oficioAutor, oficioAutorTipo=$oficioAutorTipo, oficioAutorUri=$oficioAutorUri, oficioDataApresentacao=$oficioDataApresentacao, oficioDataPublicacao=$oficioDataPublicacao, oficioTitulo=$oficioTitulo, presidente=$presidente, presidenteUri=$presidenteUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataStatus != null) {
      json[r'dataStatus'] = this.dataStatus;
    } else {
      json[r'dataStatus'] = null;
    }
    if (this.documentoSGM != null) {
      json[r'documentoSGM'] = this.documentoSGM;
    } else {
      json[r'documentoSGM'] = null;
    }
    if (this.idLegislatura != null) {
      json[r'idLegislatura'] = this.idLegislatura;
    } else {
      json[r'idLegislatura'] = null;
    }
    if (this.observacao != null) {
      json[r'observacao'] = this.observacao;
    } else {
      json[r'observacao'] = null;
    }
    if (this.oficioAutor != null) {
      json[r'oficioAutor'] = this.oficioAutor;
    } else {
      json[r'oficioAutor'] = null;
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
    if (this.presidente != null) {
      json[r'presidente'] = this.presidente;
    } else {
      json[r'presidente'] = null;
    }
    if (this.presidenteUri != null) {
      json[r'presidenteUri'] = this.presidenteUri;
    } else {
      json[r'presidenteUri'] = null;
    }
    return json;
  }

  /// Returns a new [Historico] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Historico? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Historico(
        dataStatus: mapValueOfType<String>(json, r'dataStatus'),
        documentoSGM: mapValueOfType<String>(json, r'documentoSGM'),
        idLegislatura: mapValueOfType<String>(json, r'idLegislatura'),
        observacao: mapValueOfType<String>(json, r'observacao'),
        oficioAutor: mapValueOfType<String>(json, r'oficioAutor'),
        oficioAutorTipo: mapValueOfType<String>(json, r'oficioAutorTipo'),
        oficioAutorUri: mapValueOfType<String>(json, r'oficioAutorUri'),
        oficioDataApresentacao: mapValueOfType<String>(json, r'oficioDataApresentacao'),
        oficioDataPublicacao: mapValueOfType<String>(json, r'oficioDataPublicacao'),
        oficioTitulo: mapValueOfType<String>(json, r'oficioTitulo'),
        presidente: mapValueOfType<String>(json, r'presidente'),
        presidenteUri: mapValueOfType<String>(json, r'presidenteUri'),
      );
    }
    return null;
  }

  static List<Historico> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Historico>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Historico.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Historico> mapFromJson(dynamic json) {
    final map = <String, Historico>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Historico.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Historico-objects as value to a dart map
  static Map<String, List<Historico>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Historico>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Historico.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

