//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class DeputadoDespesas {
  /// Returns a new [DeputadoDespesas] instance.
  DeputadoDespesas({
    this.ano,
    this.cnpjCpfFornecedor,
    this.codDocumento,
    this.codLote,
    this.codTipoDocumento,
    this.dataDocumento,
    this.mes,
    this.nomeFornecedor,
    this.numDocumento,
    this.numRessarcimento,
    this.parcela,
    this.tipoDespesa,
    this.tipoDocumento,
    this.urlDocumento,
    this.valorDocumento,
    this.valorGlosa,
    this.valorLiquido,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ano;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cnpjCpfFornecedor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? codDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codLote;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? codTipoDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nomeFornecedor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? numRessarcimento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? parcela;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipoDespesa;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tipoDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? urlDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? valorDocumento;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? valorGlosa;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? valorLiquido;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DeputadoDespesas &&
    other.ano == ano &&
    other.cnpjCpfFornecedor == cnpjCpfFornecedor &&
    other.codDocumento == codDocumento &&
    other.codLote == codLote &&
    other.codTipoDocumento == codTipoDocumento &&
    other.dataDocumento == dataDocumento &&
    other.mes == mes &&
    other.nomeFornecedor == nomeFornecedor &&
    other.numDocumento == numDocumento &&
    other.numRessarcimento == numRessarcimento &&
    other.parcela == parcela &&
    other.tipoDespesa == tipoDespesa &&
    other.tipoDocumento == tipoDocumento &&
    other.urlDocumento == urlDocumento &&
    other.valorDocumento == valorDocumento &&
    other.valorGlosa == valorGlosa &&
    other.valorLiquido == valorLiquido;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ano == null ? 0 : ano!.hashCode) +
    (cnpjCpfFornecedor == null ? 0 : cnpjCpfFornecedor!.hashCode) +
    (codDocumento == null ? 0 : codDocumento!.hashCode) +
    (codLote == null ? 0 : codLote!.hashCode) +
    (codTipoDocumento == null ? 0 : codTipoDocumento!.hashCode) +
    (dataDocumento == null ? 0 : dataDocumento!.hashCode) +
    (mes == null ? 0 : mes!.hashCode) +
    (nomeFornecedor == null ? 0 : nomeFornecedor!.hashCode) +
    (numDocumento == null ? 0 : numDocumento!.hashCode) +
    (numRessarcimento == null ? 0 : numRessarcimento!.hashCode) +
    (parcela == null ? 0 : parcela!.hashCode) +
    (tipoDespesa == null ? 0 : tipoDespesa!.hashCode) +
    (tipoDocumento == null ? 0 : tipoDocumento!.hashCode) +
    (urlDocumento == null ? 0 : urlDocumento!.hashCode) +
    (valorDocumento == null ? 0 : valorDocumento!.hashCode) +
    (valorGlosa == null ? 0 : valorGlosa!.hashCode) +
    (valorLiquido == null ? 0 : valorLiquido!.hashCode);

  @override
  String toString() => 'DeputadoDespesas[ano=$ano, cnpjCpfFornecedor=$cnpjCpfFornecedor, codDocumento=$codDocumento, codLote=$codLote, codTipoDocumento=$codTipoDocumento, dataDocumento=$dataDocumento, mes=$mes, nomeFornecedor=$nomeFornecedor, numDocumento=$numDocumento, numRessarcimento=$numRessarcimento, parcela=$parcela, tipoDespesa=$tipoDespesa, tipoDocumento=$tipoDocumento, urlDocumento=$urlDocumento, valorDocumento=$valorDocumento, valorGlosa=$valorGlosa, valorLiquido=$valorLiquido]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ano != null) {
      json[r'ano'] = this.ano;
    } else {
      json[r'ano'] = null;
    }
    if (this.cnpjCpfFornecedor != null) {
      json[r'cnpjCpfFornecedor'] = this.cnpjCpfFornecedor;
    } else {
      json[r'cnpjCpfFornecedor'] = null;
    }
    if (this.codDocumento != null) {
      json[r'codDocumento'] = this.codDocumento;
    } else {
      json[r'codDocumento'] = null;
    }
    if (this.codLote != null) {
      json[r'codLote'] = this.codLote;
    } else {
      json[r'codLote'] = null;
    }
    if (this.codTipoDocumento != null) {
      json[r'codTipoDocumento'] = this.codTipoDocumento;
    } else {
      json[r'codTipoDocumento'] = null;
    }
    if (this.dataDocumento != null) {
      json[r'dataDocumento'] = this.dataDocumento;
    } else {
      json[r'dataDocumento'] = null;
    }
    if (this.mes != null) {
      json[r'mes'] = this.mes;
    } else {
      json[r'mes'] = null;
    }
    if (this.nomeFornecedor != null) {
      json[r'nomeFornecedor'] = this.nomeFornecedor;
    } else {
      json[r'nomeFornecedor'] = null;
    }
    if (this.numDocumento != null) {
      json[r'numDocumento'] = this.numDocumento;
    } else {
      json[r'numDocumento'] = null;
    }
    if (this.numRessarcimento != null) {
      json[r'numRessarcimento'] = this.numRessarcimento;
    } else {
      json[r'numRessarcimento'] = null;
    }
    if (this.parcela != null) {
      json[r'parcela'] = this.parcela;
    } else {
      json[r'parcela'] = null;
    }
    if (this.tipoDespesa != null) {
      json[r'tipoDespesa'] = this.tipoDespesa;
    } else {
      json[r'tipoDespesa'] = null;
    }
    if (this.tipoDocumento != null) {
      json[r'tipoDocumento'] = this.tipoDocumento;
    } else {
      json[r'tipoDocumento'] = null;
    }
    if (this.urlDocumento != null) {
      json[r'urlDocumento'] = this.urlDocumento;
    } else {
      json[r'urlDocumento'] = null;
    }
    if (this.valorDocumento != null) {
      json[r'valorDocumento'] = this.valorDocumento;
    } else {
      json[r'valorDocumento'] = null;
    }
    if (this.valorGlosa != null) {
      json[r'valorGlosa'] = this.valorGlosa;
    } else {
      json[r'valorGlosa'] = null;
    }
    if (this.valorLiquido != null) {
      json[r'valorLiquido'] = this.valorLiquido;
    } else {
      json[r'valorLiquido'] = null;
    }
    return json;
  }

  /// Returns a new [DeputadoDespesas] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DeputadoDespesas? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DeputadoDespesas(
        ano: mapValueOfType<int>(json, r'ano'),
        cnpjCpfFornecedor: mapValueOfType<String>(json, r'cnpjCpfFornecedor'),
        codDocumento: mapValueOfType<String>(json, r'codDocumento'),
        codLote: mapValueOfType<int>(json, r'codLote'),
        codTipoDocumento: mapValueOfType<int>(json, r'codTipoDocumento'),
        dataDocumento: mapValueOfType<String>(json, r'dataDocumento'),
        mes: mapValueOfType<int>(json, r'mes'),
        nomeFornecedor: mapValueOfType<String>(json, r'nomeFornecedor'),
        numDocumento: mapValueOfType<String>(json, r'numDocumento'),
        numRessarcimento: mapValueOfType<String>(json, r'numRessarcimento'),
        parcela: mapValueOfType<int>(json, r'parcela'),
        tipoDespesa: mapValueOfType<String>(json, r'tipoDespesa'),
        tipoDocumento: mapValueOfType<String>(json, r'tipoDocumento'),
        urlDocumento: mapValueOfType<String>(json, r'urlDocumento'),
        valorDocumento: mapValueOfType<double>(json, r'valorDocumento'),
        valorGlosa: mapValueOfType<double>(json, r'valorGlosa'),
        valorLiquido: mapValueOfType<double>(json, r'valorLiquido'),
      );
    }
    return null;
  }

  static List<DeputadoDespesas> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DeputadoDespesas>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DeputadoDespesas.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DeputadoDespesas> mapFromJson(dynamic json) {
    final map = <String, DeputadoDespesas>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DeputadoDespesas.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DeputadoDespesas-objects as value to a dart map
  static Map<String, List<DeputadoDespesas>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DeputadoDespesas>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DeputadoDespesas.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

