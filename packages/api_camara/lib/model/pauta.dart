//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Pauta {
  /// Returns a new [Pauta] instance.
  Pauta({
    this.codRegime,
    this.ordem,
    this.proposicaoRelacionada,
    this.proposicao,
    this.regime,
    this.relator,
    this.situacaoItem,
    this.textoParecer,
    this.titulo,
    this.topico,
    this.uriVotacao,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codRegime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ordem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProposicoesRelacionadas? proposicaoRelacionada;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProposicaoRetornoPrincipal? proposicao;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? regime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Deputado? relator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? situacaoItem;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? textoParecer;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? titulo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? topico;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? uriVotacao;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pauta &&
    other.codRegime == codRegime &&
    other.ordem == ordem &&
    other.proposicaoRelacionada == proposicaoRelacionada &&
    other.proposicao == proposicao &&
    other.regime == regime &&
    other.relator == relator &&
    other.situacaoItem == situacaoItem &&
    other.textoParecer == textoParecer &&
    other.titulo == titulo &&
    other.topico == topico &&
    other.uriVotacao == uriVotacao;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (codRegime == null ? 0 : codRegime!.hashCode) +
    (ordem == null ? 0 : ordem!.hashCode) +
    (proposicaoRelacionada == null ? 0 : proposicaoRelacionada!.hashCode) +
    (proposicao == null ? 0 : proposicao!.hashCode) +
    (regime == null ? 0 : regime!.hashCode) +
    (relator == null ? 0 : relator!.hashCode) +
    (situacaoItem == null ? 0 : situacaoItem!.hashCode) +
    (textoParecer == null ? 0 : textoParecer!.hashCode) +
    (titulo == null ? 0 : titulo!.hashCode) +
    (topico == null ? 0 : topico!.hashCode) +
    (uriVotacao == null ? 0 : uriVotacao!.hashCode);

  @override
  String toString() => 'Pauta[codRegime=$codRegime, ordem=$ordem, proposicaoRelacionada=$proposicaoRelacionada, proposicao=$proposicao, regime=$regime, relator=$relator, situacaoItem=$situacaoItem, textoParecer=$textoParecer, titulo=$titulo, topico=$topico, uriVotacao=$uriVotacao]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.codRegime != null) {
      json[r'codRegime'] = this.codRegime;
    } else {
      json[r'codRegime'] = null;
    }
    if (this.ordem != null) {
      json[r'ordem'] = this.ordem;
    } else {
      json[r'ordem'] = null;
    }
    if (this.proposicaoRelacionada != null) {
      json[r'proposicaoRelacionada_'] = this.proposicaoRelacionada;
    } else {
      json[r'proposicaoRelacionada_'] = null;
    }
    if (this.proposicao != null) {
      json[r'proposicao_'] = this.proposicao;
    } else {
      json[r'proposicao_'] = null;
    }
    if (this.regime != null) {
      json[r'regime'] = this.regime;
    } else {
      json[r'regime'] = null;
    }
    if (this.relator != null) {
      json[r'relator'] = this.relator;
    } else {
      json[r'relator'] = null;
    }
    if (this.situacaoItem != null) {
      json[r'situacaoItem'] = this.situacaoItem;
    } else {
      json[r'situacaoItem'] = null;
    }
    if (this.textoParecer != null) {
      json[r'textoParecer'] = this.textoParecer;
    } else {
      json[r'textoParecer'] = null;
    }
    if (this.titulo != null) {
      json[r'titulo'] = this.titulo;
    } else {
      json[r'titulo'] = null;
    }
    if (this.topico != null) {
      json[r'topico'] = this.topico;
    } else {
      json[r'topico'] = null;
    }
    if (this.uriVotacao != null) {
      json[r'uriVotacao'] = this.uriVotacao;
    } else {
      json[r'uriVotacao'] = null;
    }
    return json;
  }

  /// Returns a new [Pauta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pauta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Pauta(
        codRegime: mapValueOfType<int>(json, r'codRegime'),
        ordem: mapValueOfType<int>(json, r'ordem'),
        proposicaoRelacionada: ProposicoesRelacionadas.fromJson(json[r'proposicaoRelacionada_']),
        proposicao: ProposicaoRetornoPrincipal.fromJson(json[r'proposicao_']),
        regime: mapValueOfType<String>(json, r'regime'),
        relator: Deputado.fromJson(json[r'relator']),
        situacaoItem: mapValueOfType<String>(json, r'situacaoItem'),
        textoParecer: mapValueOfType<String>(json, r'textoParecer'),
        titulo: mapValueOfType<String>(json, r'titulo'),
        topico: mapValueOfType<String>(json, r'topico'),
        uriVotacao: mapValueOfType<String>(json, r'uriVotacao'),
      );
    }
    return null;
  }

  static List<Pauta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pauta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pauta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pauta> mapFromJson(dynamic json) {
    final map = <String, Pauta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pauta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pauta-objects as value to a dart map
  static Map<String, List<Pauta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pauta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pauta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

