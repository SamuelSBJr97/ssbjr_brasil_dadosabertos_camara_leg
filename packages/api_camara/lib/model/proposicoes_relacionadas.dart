//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProposicoesRelacionadas {
  /// Returns a new [ProposicoesRelacionadas] instance.
  ProposicoesRelacionadas({
    this.ano,
    this.codTipo,
    this.dataApresentacao,
    this.ementa,
    this.id,
    this.numero,
    this.siglaTipo,
    this.uri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ano;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codTipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataApresentacao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ementa;

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
  String? numero;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaTipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProposicoesRelacionadas &&
    other.ano == ano &&
    other.codTipo == codTipo &&
    other.dataApresentacao == dataApresentacao &&
    other.ementa == ementa &&
    other.id == id &&
    other.numero == numero &&
    other.siglaTipo == siglaTipo &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ano == null ? 0 : ano!.hashCode) +
    (codTipo == null ? 0 : codTipo!.hashCode) +
    (dataApresentacao == null ? 0 : dataApresentacao!.hashCode) +
    (ementa == null ? 0 : ementa!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (numero == null ? 0 : numero!.hashCode) +
    (siglaTipo == null ? 0 : siglaTipo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'ProposicoesRelacionadas[ano=$ano, codTipo=$codTipo, dataApresentacao=$dataApresentacao, ementa=$ementa, id=$id, numero=$numero, siglaTipo=$siglaTipo, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ano != null) {
      json[r'ano'] = this.ano;
    } else {
      json[r'ano'] = null;
    }
    if (this.codTipo != null) {
      json[r'codTipo'] = this.codTipo;
    } else {
      json[r'codTipo'] = null;
    }
    if (this.dataApresentacao != null) {
      json[r'dataApresentacao'] = this.dataApresentacao;
    } else {
      json[r'dataApresentacao'] = null;
    }
    if (this.ementa != null) {
      json[r'ementa'] = this.ementa;
    } else {
      json[r'ementa'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.numero != null) {
      json[r'numero'] = this.numero;
    } else {
      json[r'numero'] = null;
    }
    if (this.siglaTipo != null) {
      json[r'siglaTipo'] = this.siglaTipo;
    } else {
      json[r'siglaTipo'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [ProposicoesRelacionadas] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProposicoesRelacionadas? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ProposicoesRelacionadas(
        ano: mapValueOfType<String>(json, r'ano'),
        codTipo: mapValueOfType<String>(json, r'codTipo'),
        dataApresentacao: mapValueOfType<String>(json, r'dataApresentacao'),
        ementa: mapValueOfType<String>(json, r'ementa'),
        id: mapValueOfType<int>(json, r'id'),
        numero: mapValueOfType<String>(json, r'numero'),
        siglaTipo: mapValueOfType<String>(json, r'siglaTipo'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<ProposicoesRelacionadas> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProposicoesRelacionadas>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProposicoesRelacionadas.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProposicoesRelacionadas> mapFromJson(dynamic json) {
    final map = <String, ProposicoesRelacionadas>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProposicoesRelacionadas.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProposicoesRelacionadas-objects as value to a dart map
  static Map<String, List<ProposicoesRelacionadas>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProposicoesRelacionadas>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProposicoesRelacionadas.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

