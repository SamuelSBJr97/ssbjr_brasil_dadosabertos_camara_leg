//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoOcupacoes {
  /// Returns a new [DeputadoOcupacoes] instance.
  DeputadoOcupacoes({
    this.anoFim,
    this.anoInicio,
    this.entidade,
    this.entidadePais,
    this.entidadeUF,
    this.titulo,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? anoFim;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? anoInicio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entidade;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entidadePais;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? entidadeUF;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoOcupacoes &&
    other.anoFim == anoFim &&
    other.anoInicio == anoInicio &&
    other.entidade == entidade &&
    other.entidadePais == entidadePais &&
    other.entidadeUF == entidadeUF &&
    other.titulo == titulo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (anoFim == null ? 0 : anoFim!.hashCode) +
    (anoInicio == null ? 0 : anoInicio!.hashCode) +
    (entidade == null ? 0 : entidade!.hashCode) +
    (entidadePais == null ? 0 : entidadePais!.hashCode) +
    (entidadeUF == null ? 0 : entidadeUF!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode);

  @override
  String toString() => 'DeputadoOcupacoes[anoFim=$anoFim, anoInicio=$anoInicio, entidade=$entidade, entidadePais=$entidadePais, entidadeUF=$entidadeUF, titulo=$titulo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.anoFim != null) {
      json[r'anoFim'] = this.anoFim;
    } else {
      json[r'anoFim'] = null;
    }
    if (this.anoInicio != null) {
      json[r'anoInicio'] = this.anoInicio;
    } else {
      json[r'anoInicio'] = null;
    }
    if (this.entidade != null) {
      json[r'entidade'] = this.entidade;
    } else {
      json[r'entidade'] = null;
    }
    if (this.entidadePais != null) {
      json[r'entidadePais'] = this.entidadePais;
    } else {
      json[r'entidadePais'] = null;
    }
    if (this.entidadeUF != null) {
      json[r'entidadeUF'] = this.entidadeUF;
    } else {
      json[r'entidadeUF'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoOcupacoes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoOcupacoes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoOcupacoes(
        anoFim: mapValueOfType<int>(json, r'anoFim'),
        anoInicio: mapValueOfType<int>(json, r'anoInicio'),
        entidade: mapValueOfType<String>(json, r'entidade'),
        entidadePais: mapValueOfType<String>(json, r'entidadePais'),
        entidadeUF: mapValueOfType<String>(json, r'entidadeUF'),
        titulo: mapValueOfType<String>(json, r'titulo'),
      );
    }
    return null;
  }

  static List<DeputadoOcupacoes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoOcupacoes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoOcupacoes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoOcupacoes> mapFromJson(dynamic json) {
    final map = <String, DeputadoOcupacoes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoOcupacoes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoOcupacoes-objects as value to a dart map
  static Map<String, List<DeputadoOcupacoes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoOcupacoes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoOcupacoes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

