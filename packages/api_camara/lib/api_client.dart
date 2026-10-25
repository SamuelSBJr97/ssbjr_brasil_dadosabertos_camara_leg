//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiClient {
  ApiClient({this.basePath = 'https://dadosabertos.camara.leg.br/api/v2', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType, {
    Future<void>? abortTrigger,
  }) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = AbortableStreamedRequest(method, uri, abortTrigger: abortTrigger);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = AbortableMultipartRequest(method, uri, abortTrigger: abortTrigger);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      final request = AbortableRequest(method, uri, abortTrigger: abortTrigger);
      if (nullableHeaderParams != null) {
        request.headers.addAll(nullableHeaderParams);
      }
      if (msgBody is String && msgBody.isNotEmpty) {
        request.body = msgBody;
      } else if (msgBody is List<int> && msgBody.isNotEmpty) {
        request.bodyBytes = msgBody;
      } else if (msgBody is Map<String, String>) {
        request.bodyFields = msgBody;
      }
      final response = await _client.send(request);
      return Response.fromStream(response);
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'BancadaLideres':
          return BancadaLideres.fromJson(value);
        case 'Bloco':
          return Bloco.fromJson(value);
        case 'BlocoID':
          return BlocoID.fromJson(value);
        case 'Deputado':
          return Deputado.fromJson(value);
        case 'DeputadoDespesas':
          return DeputadoDespesas.fromJson(value);
        case 'DeputadoDiscurso':
          return DeputadoDiscurso.fromJson(value);
        case 'DeputadoHistorico':
          return DeputadoHistorico.fromJson(value);
        case 'DeputadoID':
          return DeputadoID.fromJson(value);
        case 'DeputadoMandatoExterno':
          return DeputadoMandatoExterno.fromJson(value);
        case 'DeputadoOcupacoes':
          return DeputadoOcupacoes.fromJson(value);
        case 'DeputadoOrgao':
          return DeputadoOrgao.fromJson(value);
        case 'DeputadoProfissoes':
          return DeputadoProfissoes.fromJson(value);
        case 'DeputadoUltimoStatus':
          return DeputadoUltimoStatus.fromJson(value);
        case 'EfeitosRegistrados':
          return EfeitosRegistrados.fromJson(value);
        case 'Eventos':
          return Eventos.fromJson(value);
        case 'EventosID':
          return EventosID.fromJson(value);
        case 'FaseEvento':
          return FaseEvento.fromJson(value);
        case 'Frente':
          return Frente.fromJson(value);
        case 'FrenteID':
          return FrenteID.fromJson(value);
        case 'Gabinete':
          return Gabinete.fromJson(value);
        case 'Grupos':
          return Grupos.fromJson(value);
        case 'GruposId':
          return GruposId.fromJson(value);
        case 'GruposMembros':
          return GruposMembros.fromJson(value);
        case 'Historico':
          return Historico.fromJson(value);
        case 'Legislatura':
          return Legislatura.fromJson(value);
        case 'LegislaturaIDLideres':
          return LegislaturaIDLideres.fromJson(value);
        case 'LegislaturaIDMesa':
          return LegislaturaIDMesa.fromJson(value);
        case 'Link':
          return Link.fromJson(value);
        case 'LocalCamara':
          return LocalCamara.fromJson(value);
        case 'Membro':
          return Membro.fromJson(value);
        case 'MembroFrente':
          return MembroFrente.fromJson(value);
        case 'Orgao':
          return Orgao.fromJson(value);
        case 'OrgaoDetalhe':
          return OrgaoDetalhe.fromJson(value);
        case 'OrgaoMembros':
          return OrgaoMembros.fromJson(value);
        case 'Orientacao':
          return Orientacao.fromJson(value);
        case 'ParlamentarLideres':
          return ParlamentarLideres.fromJson(value);
        case 'Partido':
          return Partido.fromJson(value);
        case 'PartidoID':
          return PartidoID.fromJson(value);
        case 'PartidoIDStatus':
          return PartidoIDStatus.fromJson(value);
        case 'PartidoLider':
          return PartidoLider.fromJson(value);
        case 'PartidosIDLideres':
          return PartidosIDLideres.fromJson(value);
        case 'Pauta':
          return Pauta.fromJson(value);
        case 'ProposicaoAutor':
          return ProposicaoAutor.fromJson(value);
        case 'ProposicaoRetornoPrincipal':
          return ProposicaoRetornoPrincipal.fromJson(value);
        case 'ProposicaoTema':
          return ProposicaoTema.fromJson(value);
        case 'ProposicaoTramitacao':
          return ProposicaoTramitacao.fromJson(value);
        case 'ProposicoesRelacionadas':
          return ProposicoesRelacionadas.fromJson(value);
        case 'Referencia':
          return Referencia.fromJson(value);
        case 'ReferenciaDeputado':
          return ReferenciaDeputado.fromJson(value);
        case 'ReferenciaEvento':
          return ReferenciaEvento.fromJson(value);
        case 'ReferenciaOrgao':
          return ReferenciaOrgao.fromJson(value);
        case 'ReferenciaProposicao':
          return ReferenciaProposicao.fromJson(value);
        case 'Requerimento':
          return Requerimento.fromJson(value);
        case 'ResultadoBloco':
          return ResultadoBloco.fromJson(value);
        case 'ResultadoBlocoID':
          return ResultadoBlocoID.fromJson(value);
        case 'ResultadoDeputado':
          return ResultadoDeputado.fromJson(value);
        case 'ResultadoDeputadoDespesas':
          return ResultadoDeputadoDespesas.fromJson(value);
        case 'ResultadoDeputadoDiscurso':
          return ResultadoDeputadoDiscurso.fromJson(value);
        case 'ResultadoDeputadoEventos':
          return ResultadoDeputadoEventos.fromJson(value);
        case 'ResultadoDeputadoHistorico':
          return ResultadoDeputadoHistorico.fromJson(value);
        case 'ResultadoDeputadoID':
          return ResultadoDeputadoID.fromJson(value);
        case 'ResultadoDeputadoMandatoExterno':
          return ResultadoDeputadoMandatoExterno.fromJson(value);
        case 'ResultadoDeputadoOrgaos':
          return ResultadoDeputadoOrgaos.fromJson(value);
        case 'ResultadoDeputadoProfissoes':
          return ResultadoDeputadoProfissoes.fromJson(value);
        case 'ResultadoEventoOrgao':
          return ResultadoEventoOrgao.fromJson(value);
        case 'ResultadoEventos':
          return ResultadoEventos.fromJson(value);
        case 'ResultadoEventosDeputado':
          return ResultadoEventosDeputado.fromJson(value);
        case 'ResultadoEventosID':
          return ResultadoEventosID.fromJson(value);
        case 'ResultadoEventosPauta':
          return ResultadoEventosPauta.fromJson(value);
        case 'ResultadoFrenteID':
          return ResultadoFrenteID.fromJson(value);
        case 'ResultadoFrentes':
          return ResultadoFrentes.fromJson(value);
        case 'ResultadoGrupos':
          return ResultadoGrupos.fromJson(value);
        case 'ResultadoGruposHistorico':
          return ResultadoGruposHistorico.fromJson(value);
        case 'ResultadoGruposID':
          return ResultadoGruposID.fromJson(value);
        case 'ResultadoGruposMembros':
          return ResultadoGruposMembros.fromJson(value);
        case 'ResultadoIdDeputadoMembro':
          return ResultadoIdDeputadoMembro.fromJson(value);
        case 'ResultadoLegislaturaIDLideres':
          return ResultadoLegislaturaIDLideres.fromJson(value);
        case 'ResultadoLegislaturaIDMesa':
          return ResultadoLegislaturaIDMesa.fromJson(value);
        case 'ResultadoLegislaturas':
          return ResultadoLegislaturas.fromJson(value);
        case 'ResultadoLegislaturasDetalhe':
          return ResultadoLegislaturasDetalhe.fromJson(value);
        case 'ResultadoMembroFrente':
          return ResultadoMembroFrente.fromJson(value);
        case 'ResultadoOcupacoesDeputado':
          return ResultadoOcupacoesDeputado.fromJson(value);
        case 'ResultadoOrgaoDetalhe':
          return ResultadoOrgaoDetalhe.fromJson(value);
        case 'ResultadoOrgaoEventos':
          return ResultadoOrgaoEventos.fromJson(value);
        case 'ResultadoOrgaoMembros':
          return ResultadoOrgaoMembros.fromJson(value);
        case 'ResultadoOrgaos':
          return ResultadoOrgaos.fromJson(value);
        case 'ResultadoPartidos':
          return ResultadoPartidos.fromJson(value);
        case 'ResultadoPartidosID':
          return ResultadoPartidosID.fromJson(value);
        case 'ResultadoPartidosIDLideresVice':
          return ResultadoPartidosIDLideresVice.fromJson(value);
        case 'ResultadoPartidosIDMembros':
          return ResultadoPartidosIDMembros.fromJson(value);
        case 'ResultadoProposicoes':
          return ResultadoProposicoes.fromJson(value);
        case 'ResultadoProposicoesAutores':
          return ResultadoProposicoesAutores.fromJson(value);
        case 'ResultadoProposicoesObject':
          return ResultadoProposicoesObject.fromJson(value);
        case 'ResultadoProposicoesRelacionadas':
          return ResultadoProposicoesRelacionadas.fromJson(value);
        case 'ResultadoProposicoesTema':
          return ResultadoProposicoesTema.fromJson(value);
        case 'ResultadoProposicoesTramitacao':
          return ResultadoProposicoesTramitacao.fromJson(value);
        case 'ResultadoReferenciaSubResourceReferenciaDeputado':
          return ResultadoReferenciaSubResourceReferenciaDeputado.fromJson(value);
        case 'ResultadoReferenciaSubResourceReferenciaEvento':
          return ResultadoReferenciaSubResourceReferenciaEvento.fromJson(value);
        case 'ResultadoReferenciaSubResourceReferenciaOrgao':
          return ResultadoReferenciaSubResourceReferenciaOrgao.fromJson(value);
        case 'ResultadoReferenciaSubResourceReferenciaProposicao':
          return ResultadoReferenciaSubResourceReferenciaProposicao.fromJson(value);
        case 'ResultadoReferencias':
          return ResultadoReferencias.fromJson(value);
        case 'ResultadoVotacoes':
          return ResultadoVotacoes.fromJson(value);
        case 'ResultadoVotacoesID':
          return ResultadoVotacoesID.fromJson(value);
        case 'ResultadoVotacoesIDOrientacoes':
          return ResultadoVotacoesIDOrientacoes.fromJson(value);
        case 'ResultadoVotacoesIDVotos':
          return ResultadoVotacoesIDVotos.fromJson(value);
        case 'UltimaApresentacaoProposicao':
          return UltimaApresentacaoProposicao.fromJson(value);
        case 'UltimoStatus':
          return UltimoStatus.fromJson(value);
        case 'UltimoStatusID':
          return UltimoStatusID.fromJson(value);
        case 'Votacao':
          return Votacao.fromJson(value);
        case 'VotacaoID':
          return VotacaoID.fromJson(value);
        case 'Votos':
          return Votos.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
