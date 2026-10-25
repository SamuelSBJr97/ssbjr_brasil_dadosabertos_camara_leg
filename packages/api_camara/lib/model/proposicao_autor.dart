//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProposicaoAutor {
  /// Returns a new [ProposicaoAutor] instance.
  ProposicaoAutor({
    this.codTipo,
    this.nome,
    this.ordemAssinatura,
    this.proponente,
    this.tipo,
    this.uri,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codTipo;

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
  int? ordemAssinatura;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? proponente;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProposicaoAutor &&
    other.codTipo == codTipo &&
    other.nome == nome &&
    other.ordemAssinatura == ordemAssinatura &&
    other.proponente == proponente &&
    other.tipo == tipo &&
    other.uri == uri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codTipo == null ? 0 : codTipo!.hashCode) +
    (nome == null ? 0 : nome!.hashCode) +
    (ordemAssinatura == null ? 0 : ordemAssinatura!.hashCode) +
    (proponente == null ? 0 : proponente!.hashCode) +
    (tipo == null ? 0 : tipo!.hashCode) +
    (uri == null ? 0 : uri!.hashCode);

  @override
  String toString() => 'ProposicaoAutor[codTipo=$codTipo, nome=$nome, ordemAssinatura=$ordemAssinatura, proponente=$proponente, tipo=$tipo, uri=$uri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codTipo != null) {
      json[r'codTipo'] = this.codTipo;
    } else {
      json[r'codTipo'] = null;
    }
    if (this.nome != null) {
      json[r'nome'] = this.nome;
    } else {
      json[r'nome'] = null;
    }
    if (this.ordemAssinatura != null) {
      json[r'ordemAssinatura'] = this.ordemAssinatura;
    } else {
      json[r'ordemAssinatura'] = null;
    }
    if (this.proponente != null) {
      json[r'proponente'] = this.proponente;
    } else {
      json[r'proponente'] = null;
    }
    if (this.tipo != null) {
      json[r'tipo'] = this.tipo;
    } else {
      json[r'tipo'] = null;
    }
    if (this.uri != null) {
      json[r'uri'] = this.uri;
    } else {
      json[r'uri'] = null;
    }
    return json;
  }

  /// Returns a new [ProposicaoAutor] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProposicaoAutor? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ProposicaoAutor(
        codTipo: mapValueOfType<int>(json, r'codTipo'),
        nome: mapValueOfType<String>(json, r'nome'),
        ordemAssinatura: mapValueOfType<int>(json, r'ordemAssinatura'),
        proponente: mapValueOfType<int>(json, r'proponente'),
        tipo: mapValueOfType<String>(json, r'tipo'),
        uri: mapValueOfType<String>(json, r'uri'),
      );
    }
    return null;
  }

  static List<ProposicaoAutor> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProposicaoAutor>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProposicaoAutor.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProposicaoAutor> mapFromJson(dynamic json) {
    final map = <String, ProposicaoAutor>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProposicaoAutor.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProposicaoAutor-objects as value to a dart map
  static Map<String, List<ProposicaoAutor>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProposicaoAutor>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProposicaoAutor.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

