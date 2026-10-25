//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoDiscurso {
  /// Returns a new [DeputadoDiscurso] instance.
  DeputadoDiscurso({
    this.dataHoraFim,
    this.dataHoraInicio,
    this.faseEvento,
    this.keywords,
    this.sumario,
    this.tipoDiscurso,
    this.transcricao,
    this.uriEvento,
    this.urlAudio,
    this.urlTexto,
    this.urlVideo,
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
  FaseEvento? faseEvento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keywords;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sumario;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipoDiscurso;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transcricao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriEvento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlAudio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlTexto;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlVideo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoDiscurso &&
    other.dataHoraFim == dataHoraFim &&
    other.dataHoraInicio == dataHoraInicio &&
    other.faseEvento == faseEvento &&
    other.keywords == keywords &&
    other.sumario == sumario &&
    other.tipoDiscurso == tipoDiscurso &&
    other.transcricao == transcricao &&
    other.uriEvento == uriEvento &&
    other.urlAudio == urlAudio &&
    other.urlTexto == urlTexto &&
    other.urlVideo == urlVideo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataHoraFim == null ? 0 : dataHoraFim!.hashCode) +
    (dataHoraInicio == null ? 0 : dataHoraInicio!.hashCode) +
    (faseEvento == null ? 0 : faseEvento!.hashCode) +
    (keywords == null ? 0 : keywords!.hashCode) +
    (sumario == null ? 0 : sumario!.hashCode) +
    (tipoDiscurso == null ? 0 : tipoDiscurso!.hashCode) +
    (transcricao == null ? 0 : transcricao!.hashCode) +
    (uriEvento == null ? 0 : uriEvento!.hashCode) +
    (urlAudio == null ? 0 : urlAudio!.hashCode) +
    (urlTexto == null ? 0 : urlTexto!.hashCode) +
    (urlVideo == null ? 0 : urlVideo!.hashCode);

  @override
  String toString() => 'DeputadoDiscurso[dataHoraFim=$dataHoraFim, dataHoraInicio=$dataHoraInicio, faseEvento=$faseEvento, keywords=$keywords, sumario=$sumario, tipoDiscurso=$tipoDiscurso, transcricao=$transcricao, uriEvento=$uriEvento, urlAudio=$urlAudio, urlTexto=$urlTexto, urlVideo=$urlVideo]';

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
    if (this.faseEvento != null) {
      json[r'faseEvento'] = this.faseEvento;
    } else {
      json[r'faseEvento'] = null;
    }
    if (this.keywords != null) {
      json[r'keywords'] = this.keywords;
    } else {
      json[r'keywords'] = null;
    }
    if (this.sumario != null) {
      json[r'sumario'] = this.sumario;
    } else {
      json[r'sumario'] = null;
    }
    if (this.tipoDiscurso != null) {
      json[r'tipoDiscurso'] = this.tipoDiscurso;
    } else {
      json[r'tipoDiscurso'] = null;
    }
    if (this.transcricao != null) {
      json[r'transcricao'] = this.transcricao;
    } else {
      json[r'transcricao'] = null;
    }
    if (this.uriEvento != null) {
      json[r'uriEvento'] = this.uriEvento;
    } else {
      json[r'uriEvento'] = null;
    }
    if (this.urlAudio != null) {
      json[r'urlAudio'] = this.urlAudio;
    } else {
      json[r'urlAudio'] = null;
    }
    if (this.urlTexto != null) {
      json[r'urlTexto'] = this.urlTexto;
    } else {
      json[r'urlTexto'] = null;
    }
    if (this.urlVideo != null) {
      json[r'urlVideo'] = this.urlVideo;
    } else {
      json[r'urlVideo'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoDiscurso] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoDiscurso? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoDiscurso(
        dataHoraFim: mapValueOfType<String>(json, r'dataHoraFim'),
        dataHoraInicio: mapValueOfType<String>(json, r'dataHoraInicio'),
        faseEvento: FaseEvento.fromJson(json[r'faseEvento']),
        keywords: mapValueOfType<String>(json, r'keywords'),
        sumario: mapValueOfType<String>(json, r'sumario'),
        tipoDiscurso: mapValueOfType<String>(json, r'tipoDiscurso'),
        transcricao: mapValueOfType<String>(json, r'transcricao'),
        uriEvento: mapValueOfType<String>(json, r'uriEvento'),
        urlAudio: mapValueOfType<String>(json, r'urlAudio'),
        urlTexto: mapValueOfType<String>(json, r'urlTexto'),
        urlVideo: mapValueOfType<String>(json, r'urlVideo'),
      );
    }
    return null;
  }

  static List<DeputadoDiscurso> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoDiscurso>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoDiscurso.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoDiscurso> mapFromJson(dynamic json) {
    final map = <String, DeputadoDiscurso>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoDiscurso.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoDiscurso-objects as value to a dart map
  static Map<String, List<DeputadoDiscurso>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoDiscurso>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoDiscurso.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

