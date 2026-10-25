//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ReferenciaDeputado {
  /// Returns a new [ReferenciaDeputado] instance.
  ReferenciaDeputado({
    this.codTipoProfissao = const [],
    this.siglaSituacao = const [],
    this.siglaUF = const [],
  });

  List<Referencia> codTipoProfissao;

  List<Referencia> siglaSituacao;

  List<Referencia> siglaUF;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenciaDeputado &&
    _deepEquality.equals(other.codTipoProfissao, codTipoProfissao) &&
    _deepEquality.equals(other.siglaSituacao, siglaSituacao) &&
    _deepEquality.equals(other.siglaUF, siglaUF);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codTipoProfissao.hashCode) +
    (siglaSituacao.hashCode) +
    (siglaUF.hashCode);

  @override
  String toString() => 'ReferenciaDeputado[codTipoProfissao=$codTipoProfissao, siglaSituacao=$siglaSituacao, siglaUF=$siglaUF]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'codTipoProfissao'] = this.codTipoProfissao;
      json[r'siglaSituacao'] = this.siglaSituacao;
      json[r'siglaUF'] = this.siglaUF;
    return json;
  }

  /// Returns a new [ReferenciaDeputado] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenciaDeputado? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ReferenciaDeputado(
        codTipoProfissao: Referencia.listFromJson(json[r'codTipoProfissao']),
        siglaSituacao: Referencia.listFromJson(json[r'siglaSituacao']),
        siglaUF: Referencia.listFromJson(json[r'siglaUF']),
      );
    }
    return null;
  }

  static List<ReferenciaDeputado> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenciaDeputado>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenciaDeputado.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenciaDeputado> mapFromJson(dynamic json) {
    final map = <String, ReferenciaDeputado>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenciaDeputado.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenciaDeputado-objects as value to a dart map
  static Map<String, List<ReferenciaDeputado>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenciaDeputado>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenciaDeputado.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

