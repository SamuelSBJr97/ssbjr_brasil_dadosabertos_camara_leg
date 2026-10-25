//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Orientacao {
  /// Returns a new [Orientacao] instance.
  Orientacao({
    this.codPartidoBloco,
    this.codTipoLideranca,
    this.orientacaoVoto,
    this.siglaPartidoBloco,
    this.uriPartidoBloco,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codPartidoBloco;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codTipoLideranca;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orientacaoVoto;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? siglaPartidoBloco;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriPartidoBloco;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Orientacao &&
    other.codPartidoBloco == codPartidoBloco &&
    other.codTipoLideranca == codTipoLideranca &&
    other.orientacaoVoto == orientacaoVoto &&
    other.siglaPartidoBloco == siglaPartidoBloco &&
    other.uriPartidoBloco == uriPartidoBloco;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codPartidoBloco == null ? 0 : codPartidoBloco!.hashCode) +
    (codTipoLideranca == null ? 0 : codTipoLideranca!.hashCode) +
    (orientacaoVoto == null ? 0 : orientacaoVoto!.hashCode) +
    (siglaPartidoBloco == null ? 0 : siglaPartidoBloco!.hashCode) +
    (uriPartidoBloco == null ? 0 : uriPartidoBloco!.hashCode);

  @override
  String toString() => 'Orientacao[codPartidoBloco=$codPartidoBloco, codTipoLideranca=$codTipoLideranca, orientacaoVoto=$orientacaoVoto, siglaPartidoBloco=$siglaPartidoBloco, uriPartidoBloco=$uriPartidoBloco]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codPartidoBloco != null) {
      json[r'codPartidoBloco'] = this.codPartidoBloco;
    } else {
      json[r'codPartidoBloco'] = null;
    }
    if (this.codTipoLideranca != null) {
      json[r'codTipoLideranca'] = this.codTipoLideranca;
    } else {
      json[r'codTipoLideranca'] = null;
    }
    if (this.orientacaoVoto != null) {
      json[r'orientacaoVoto'] = this.orientacaoVoto;
    } else {
      json[r'orientacaoVoto'] = null;
    }
    if (this.siglaPartidoBloco != null) {
      json[r'siglaPartidoBloco'] = this.siglaPartidoBloco;
    } else {
      json[r'siglaPartidoBloco'] = null;
    }
    if (this.uriPartidoBloco != null) {
      json[r'uriPartidoBloco'] = this.uriPartidoBloco;
    } else {
      json[r'uriPartidoBloco'] = null;
    }
    return json;
  }

  /// Returns a new [Orientacao] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Orientacao? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Orientacao(
        codPartidoBloco: mapValueOfType<int>(json, r'codPartidoBloco'),
        codTipoLideranca: mapValueOfType<String>(json, r'codTipoLideranca'),
        orientacaoVoto: mapValueOfType<String>(json, r'orientacaoVoto'),
        siglaPartidoBloco: mapValueOfType<String>(json, r'siglaPartidoBloco'),
        uriPartidoBloco: mapValueOfType<String>(json, r'uriPartidoBloco'),
      );
    }
    return null;
  }

  static List<Orientacao> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Orientacao>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Orientacao.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Orientacao> mapFromJson(dynamic json) {
    final map = <String, Orientacao>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Orientacao.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Orientacao-objects as value to a dart map
  static Map<String, List<Orientacao>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Orientacao>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Orientacao.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

