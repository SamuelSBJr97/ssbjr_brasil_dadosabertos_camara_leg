//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ProposiesApi {
  ProposiesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Os possíveis estados de tramitação de uma proposição
  ///
  /// Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesProposicaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes/codSituacao';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os possíveis estados de tramitação de uma proposição
  ///
  /// Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
  Future<ResultadoReferencias?> getSituacoesProposicao({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesProposicaoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Os possíveis estados de tramitação de uma proposição
  ///
  /// Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesProposicao1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/situacoesProposicao';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os possíveis estados de tramitação de uma proposição
  ///
  /// Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como `Encaminhada à Publicação`, `Aguardando Análise`, `Devolvida ao Autor`, etc.
  Future<ResultadoReferencias?> getSituacoesProposicao1({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesProposicao1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Os vários tipos de temas existentes
  ///
  /// Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTemasProposicaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes/codTema';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os vários tipos de temas existentes
  ///
  /// Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.
  Future<ResultadoEventos?> getTemasProposicao({ Future<void>? abortTrigger, }) async {
    final response = await getTemasProposicaoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Entidades que podem ser autoras de proposições
  ///
  /// Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposAutorWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposAutor';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Entidades que podem ser autoras de proposições
  ///
  /// Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
  Future<ResultadoReferencias?> getTiposAutor({ Future<void>? abortTrigger, }) async {
    final response = await getTiposAutorWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Entidades que podem ser autoras de proposições
  ///
  /// Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposAutor1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes/codTipoAutor';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Entidades que podem ser autoras de proposições
  ///
  /// Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.
  Future<ResultadoReferencias?> getTiposAutor1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposAutor1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoReferencias',) as ResultadoReferencias;
    
    }
    return null;
  }

  /// Os vários tipos de proposições existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposProposicaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes/siglaTipo';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os vários tipos de proposições existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
  Future<ResultadoEventos?> getTiposProposicao({ Future<void>? abortTrigger, }) async {
    final response = await getTiposProposicaoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Os vários tipos de proposições existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposProposicao1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposProposicao';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os vários tipos de proposições existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como `PEC`, `Requerimento`, `Emenda de Plenário` e outros.
  Future<ResultadoEventos?> getTiposProposicao1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposProposicao1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Os vários tipos de tramitação existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposTramitacaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposTramitacao';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os vários tipos de tramitação existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
  Future<ResultadoEventos?> getTiposTramitacao({ Future<void>? abortTrigger, }) async {
    final response = await getTiposTramitacaoWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Os vários tipos de tramitação existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposTramitacao1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes/codTipoTramitacao';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Os vários tipos de tramitação existentes
  ///
  /// Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como `Apensação`, `Despacho`, `Devolução ao autor`, etc.
  Future<ResultadoEventos?> getTiposTramitacao1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposTramitacao1WithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoEventos',) as ResultadoEventos;
    
    }
    return null;
  }

  /// Lista pessoas e/ou entidades autoras de uma proposição
  ///
  /// Retorna uma lista em que cada item identifica uma pessoa ou entidade que é autora da proposição identificada por `{id}`. Além de deputados, também podem ser autores de proposições os senadores, a sociedade civil, assembleias legislativas e os poderes Executivo e Judiciário.  Pelo Regimento da Câmara, todos os que assinam uma proposição são considerados autores (art. 102), tanto os proponentes quanto os apoiadores.  Para obter mais informações sobre cada autor, é recomendável acessar, se disponível, a URL que é valor do campo `uri`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador alfanumérico da entidade
  ///
  /// * [String] accept:
  Future<Response> obterAutoresDaProposicaoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}/autores'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Lista pessoas e/ou entidades autoras de uma proposição
  ///
  /// Retorna uma lista em que cada item identifica uma pessoa ou entidade que é autora da proposição identificada por `{id}`. Além de deputados, também podem ser autores de proposições os senadores, a sociedade civil, assembleias legislativas e os poderes Executivo e Judiciário.  Pelo Regimento da Câmara, todos os que assinam uma proposição são considerados autores (art. 102), tanto os proponentes quanto os apoiadores.  Para obter mais informações sobre cada autor, é recomendável acessar, se disponível, a URL que é valor do campo `uri`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador alfanumérico da entidade
  ///
  /// * [String] accept:
  Future<ResultadoProposicoesAutores?> obterAutoresDaProposicao(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterAutoresDaProposicaoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoProposicoesAutores',) as ResultadoProposicoesAutores;
    
    }
    return null;
  }

  /// Informações detalhadas sobre uma proposição específica
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] accept:
  Future<Response> obterPorIdWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Informações detalhadas sobre uma proposição específica
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] accept:
  Future<Object?> obterPorId(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterPorIdWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'Object',) as Object;
    
    }
    return null;
  }

  /// Uma lista de proposições relacionadas a uma em especial
  ///
  /// Lista de informações básicas sobre proposições que de alguma forma se relacionam com a proposição identificada por `{id}`, como pareceres, requerimentos, substitutivos, etc.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id da proposição
  ///
  /// * [String] accept:
  Future<Response> obterRelacionadasPorIdWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}/relacionadas'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Uma lista de proposições relacionadas a uma em especial
  ///
  /// Lista de informações básicas sobre proposições que de alguma forma se relacionam com a proposição identificada por `{id}`, como pareceres, requerimentos, substitutivos, etc.  
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id da proposição
  ///
  /// * [String] accept:
  Future<ResultadoProposicoesRelacionadas?> obterRelacionadasPorId(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterRelacionadasPorIdWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoProposicoesRelacionadas',) as ResultadoProposicoesRelacionadas;
    
    }
    return null;
  }

  /// Lista de áreas temáticas de uma proposição
  ///
  /// Lista em que cada item traz informações sobre uma área temática à qual a proposição identificada por `{id}` se relaciona, segundo classificação oficial do Centro de Documentação e Informação da Câmara.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id da proposição
  ///
  /// * [String] accept:
  Future<Response> obterTemasPorIdWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}/temas'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Lista de áreas temáticas de uma proposição
  ///
  /// Lista em que cada item traz informações sobre uma área temática à qual a proposição identificada por `{id}` se relaciona, segundo classificação oficial do Centro de Documentação e Informação da Câmara.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id da proposição
  ///
  /// * [String] accept:
  Future<ResultadoProposicoesTema?> obterTemasPorId(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterTemasPorIdWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoProposicoesTema',) as ResultadoProposicoesTema;
    
    }
    return null;
  }

  /// O histórico de passos na tramitação de uma proposta
  ///
  /// Lista que traz, como cada item, um \"retrato\" de informações que podem ser alteradas a cada etapa de tramitação na vida de uma proposição (como regime de tramitação e situação) e informações sobre o que causou esse novo estado.  Esta representação das tramitações ainda é provisória.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] dataInicio:
  ///   Data do início da tramitação, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data do fim da tramitação
  ///
  /// * [String] accept:
  Future<Response> obterTramitacaoPorIdWithHttpInfo(int id, { String? dataInicio, String? dataFim, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}/tramitacoes'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// O histórico de passos na tramitação de uma proposta
  ///
  /// Lista que traz, como cada item, um \"retrato\" de informações que podem ser alteradas a cada etapa de tramitação na vida de uma proposição (como regime de tramitação e situação) e informações sobre o que causou esse novo estado.  Esta representação das tramitações ainda é provisória.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] dataInicio:
  ///   Data do início da tramitação, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data do fim da tramitação
  ///
  /// * [String] accept:
  Future<ResultadoFrentes?> obterTramitacaoPorId(int id, { String? dataInicio, String? dataFim, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterTramitacaoPorIdWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoFrentes',) as ResultadoFrentes;
    
    }
    return null;
  }

  /// Informações detalhadas de votações sobre uma proposição específica
  ///
  /// Retorna uma lista de identificadores básicos sobre as votações na Câmara que tiveram a proposição `{id}` como _objeto_ ou como _afetada_ pelos seus resultados. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `dataHoraRegistro`
  ///
  /// * [String] accept:
  Future<Response> obterVotacoesPorIdWithHttpInfo(int id, { String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes/{id}/votacoes'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ordem != null) {
      queryParams.addAll(_queryParams('', 'ordem', ordem));
    }
    if (ordenarPor != null) {
      queryParams.addAll(_queryParams('', 'ordenarPor', ordenarPor));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Informações detalhadas de votações sobre uma proposição específica
  ///
  /// Retorna uma lista de identificadores básicos sobre as votações na Câmara que tiveram a proposição `{id}` como _objeto_ ou como _afetada_ pelos seus resultados. Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico da proposição
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `dataHoraRegistro`
  ///
  /// * [String] accept:
  Future<ResultadoVotacoes?> obterVotacoesPorId(int id, { String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterVotacoesPorIdWithHttpInfo(id, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoVotacoes',) as ResultadoVotacoes;
    
    }
    return null;
  }

  /// Lista configurável de proposições na Câmara
  ///
  /// Lista de informações básicas sobre projetos de lei, resoluções, medidas provisórias, emendas, pareceres e todos os outros tipos de proposições na Câmara.  Por padrão, são retornadas todas as proposições que foram apresentadas ou tiveram alguma mudança de situação nos últimos 30 dias. Esse intervalo de tramitação pode ser configurado pelos parâmetros `dataInicio` e `dataFim`.  Se for(em) passado(s) um ou mais dos parâmetros...    - `id`    - `ano`    - `dataApresentacaoInicio`    - `dataApresentacaoFim`    - `idAutor`    - `autor`  ...o intervalo de tramitação só será levado em consideração se os parâmetros `dataInicio` e/ou `dataFim` estiverem explicitamente configurados. Se não estiverem, poderão ser listadas proposições que não tiveram tramitação recente (e a resposta pode demorar bastante).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de uma ou mais proposições no **Dados Abertos**, separados por vírgulas.
  ///
  /// * [List<String>] siglaTipo:
  ///   Uma ou mais sigla(s) separadas por vírgulas do(s) tipo(s) das proposições que se deseja obter. A lista de tipos e siglas existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`
  ///
  /// * [List<String>] numero:
  ///   Um ou mais número(s), separados por vírgula, oficialmente atribuídos às proposições segundo o art. 137 do Regimento Interno, como \"PL **1234**_/2016\"
  ///
  /// * [List<String>] ano:
  ///   Um ou mais ano(s) de apresentação das proposições que serão listadas, separados por vírgulas, no formato `AAAA`
  ///
  /// * [List<String>] codTipo:
  ///   Um ou mais código(s) numérico(s) de tipo específico de proposição, separados por vírgula. A lista de códigos existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`.
  ///
  /// * [List<String>] idDeputadoAutor:
  ///   Um ou mais números identificador(es), separados por vírgula, do(s) deputado(s) autor(es) das proposições que serão listadas. Cada número deve ser o identificador exclusivo de um parlamentar no **Dados Abertos**
  ///
  /// * [String] autor:
  ///   Nome ou parte do nome do(s) autor(es) das proposições que se deseja obter. Deve estar entre aspas
  ///
  /// * [List<String>] siglaPartidoAutor:
  ///   Uma ou mais sigla(s) separadas por vírgulas do(s) partido(s) a que pertençam os autores das proposições a serem listadas
  ///
  /// * [int] idPartidoAutor:
  ///   Identificador numérico no **Dados Abertos** do partido a que pertençam os autores das proposições que serão listadas. Esses identificadores podem ser obtidos em `/partidos` e são mais precisos do que as siglas, que podem ser usadas por partidos diferentes em épocas diferentes
  ///
  /// * [List<String>] siglaUfAutor:
  ///   Uma ou mais sigla(s) de unidade(s) da federação (estados e Distrito Federal) pela(s) qual(quais) o(s) autor(es) das proposições selecionadas tenha(m) sido eleito(s)
  ///
  /// * [List<String>] keywords:
  ///   Uma ou mais palavras chaves sobre o tema a que a proposição se relaciona
  ///
  /// * [bool] tramitacaoSenado:
  ///   Indicador booleano, com valor `TRUE` ou `FALSE` para trazer apenas proposições que já tenha tramitado no Senado
  ///
  /// * [DateTime] dataInicio:
  ///   Data do início do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas, no formato `AAAA-MM-DD`. Se omitido, é assumido como a data de 30 dias anteriores à proposição
  ///
  /// * [DateTime] dataFim:
  ///   Data do fim do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas. Se omitido, é considerado ser o dia em que é feita a requisição
  ///
  /// * [DateTime] dataApresentacaoInicio:
  ///   Data do início do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas, no formato `AAAA-MM-DD`
  ///
  /// * [DateTime] dataApresentacaoFim:
  ///   Data do fim do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas
  ///
  /// * [List<String>] codSituacao:
  ///   Código(s) numérico(s), separados por vírgulas, do tipo de situação em que se encontram as proposições que serão listadas. As situações possíveis podem ser obtidas em `/referencias/proposicoes/codSituacao`. **Atenção:** este parâmetro pode apresentar resultados inesperados, por problemas com o registro dos dados.
  ///
  /// * [List<String>] codTema:
  ///   Código(s) numérico(s), separados por vírgulas, das áreas temáticas das proposições que serão listadas. Os temas possíveis podem ser obtidos em `/referencias/proposicoes/codTema`
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `codTipo`, `siglaTipo`, `numero` ou `ano`
  ///
  /// * [String] accept:
  Future<Response> searchWithHttpInfo({ List<String>? id, List<String>? siglaTipo, List<String>? numero, List<String>? ano, List<String>? codTipo, List<String>? idDeputadoAutor, String? autor, List<String>? siglaPartidoAutor, int? idPartidoAutor, List<String>? siglaUfAutor, List<String>? keywords, bool? tramitacaoSenado, DateTime? dataInicio, DateTime? dataFim, DateTime? dataApresentacaoInicio, DateTime? dataApresentacaoFim, List<String>? codSituacao, List<String>? codTema, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/proposicoes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (siglaTipo != null) {
      queryParams.addAll(_queryParams('csv', 'siglaTipo', siglaTipo));
    }
    if (numero != null) {
      queryParams.addAll(_queryParams('csv', 'numero', numero));
    }
    if (ano != null) {
      queryParams.addAll(_queryParams('csv', 'ano', ano));
    }
    if (codTipo != null) {
      queryParams.addAll(_queryParams('csv', 'codTipo', codTipo));
    }
    if (idDeputadoAutor != null) {
      queryParams.addAll(_queryParams('csv', 'idDeputadoAutor', idDeputadoAutor));
    }
    if (autor != null) {
      queryParams.addAll(_queryParams('', 'autor', autor));
    }
    if (siglaPartidoAutor != null) {
      queryParams.addAll(_queryParams('csv', 'siglaPartidoAutor', siglaPartidoAutor));
    }
    if (idPartidoAutor != null) {
      queryParams.addAll(_queryParams('', 'idPartidoAutor', idPartidoAutor));
    }
    if (siglaUfAutor != null) {
      queryParams.addAll(_queryParams('csv', 'siglaUfAutor', siglaUfAutor));
    }
    if (keywords != null) {
      queryParams.addAll(_queryParams('csv', 'keywords', keywords));
    }
    if (tramitacaoSenado != null) {
      queryParams.addAll(_queryParams('', 'tramitacaoSenado', tramitacaoSenado));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
    }
    if (dataApresentacaoInicio != null) {
      queryParams.addAll(_queryParams('', 'dataApresentacaoInicio', dataApresentacaoInicio));
    }
    if (dataApresentacaoFim != null) {
      queryParams.addAll(_queryParams('', 'dataApresentacaoFim', dataApresentacaoFim));
    }
    if (codSituacao != null) {
      queryParams.addAll(_queryParams('csv', 'codSituacao', codSituacao));
    }
    if (codTema != null) {
      queryParams.addAll(_queryParams('csv', 'codTema', codTema));
    }
    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
    }
    if (ordem != null) {
      queryParams.addAll(_queryParams('', 'ordem', ordem));
    }
    if (ordenarPor != null) {
      queryParams.addAll(_queryParams('', 'ordenarPor', ordenarPor));
    }

    if (accept != null) {
      headerParams[r'Accept'] = parameterToString(accept);
    }

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
      abortTrigger: abortTrigger,
    );
  }

  /// Lista configurável de proposições na Câmara
  ///
  /// Lista de informações básicas sobre projetos de lei, resoluções, medidas provisórias, emendas, pareceres e todos os outros tipos de proposições na Câmara.  Por padrão, são retornadas todas as proposições que foram apresentadas ou tiveram alguma mudança de situação nos últimos 30 dias. Esse intervalo de tramitação pode ser configurado pelos parâmetros `dataInicio` e `dataFim`.  Se for(em) passado(s) um ou mais dos parâmetros...    - `id`    - `ano`    - `dataApresentacaoInicio`    - `dataApresentacaoFim`    - `idAutor`    - `autor`  ...o intervalo de tramitação só será levado em consideração se os parâmetros `dataInicio` e/ou `dataFim` estiverem explicitamente configurados. Se não estiverem, poderão ser listadas proposições que não tiveram tramitação recente (e a resposta pode demorar bastante).
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de uma ou mais proposições no **Dados Abertos**, separados por vírgulas.
  ///
  /// * [List<String>] siglaTipo:
  ///   Uma ou mais sigla(s) separadas por vírgulas do(s) tipo(s) das proposições que se deseja obter. A lista de tipos e siglas existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`
  ///
  /// * [List<String>] numero:
  ///   Um ou mais número(s), separados por vírgula, oficialmente atribuídos às proposições segundo o art. 137 do Regimento Interno, como \"PL **1234**_/2016\"
  ///
  /// * [List<String>] ano:
  ///   Um ou mais ano(s) de apresentação das proposições que serão listadas, separados por vírgulas, no formato `AAAA`
  ///
  /// * [List<String>] codTipo:
  ///   Um ou mais código(s) numérico(s) de tipo específico de proposição, separados por vírgula. A lista de códigos existentes pode ser obtida em `/referencias/proposicoes/siglaTipo`.
  ///
  /// * [List<String>] idDeputadoAutor:
  ///   Um ou mais números identificador(es), separados por vírgula, do(s) deputado(s) autor(es) das proposições que serão listadas. Cada número deve ser o identificador exclusivo de um parlamentar no **Dados Abertos**
  ///
  /// * [String] autor:
  ///   Nome ou parte do nome do(s) autor(es) das proposições que se deseja obter. Deve estar entre aspas
  ///
  /// * [List<String>] siglaPartidoAutor:
  ///   Uma ou mais sigla(s) separadas por vírgulas do(s) partido(s) a que pertençam os autores das proposições a serem listadas
  ///
  /// * [int] idPartidoAutor:
  ///   Identificador numérico no **Dados Abertos** do partido a que pertençam os autores das proposições que serão listadas. Esses identificadores podem ser obtidos em `/partidos` e são mais precisos do que as siglas, que podem ser usadas por partidos diferentes em épocas diferentes
  ///
  /// * [List<String>] siglaUfAutor:
  ///   Uma ou mais sigla(s) de unidade(s) da federação (estados e Distrito Federal) pela(s) qual(quais) o(s) autor(es) das proposições selecionadas tenha(m) sido eleito(s)
  ///
  /// * [List<String>] keywords:
  ///   Uma ou mais palavras chaves sobre o tema a que a proposição se relaciona
  ///
  /// * [bool] tramitacaoSenado:
  ///   Indicador booleano, com valor `TRUE` ou `FALSE` para trazer apenas proposições que já tenha tramitado no Senado
  ///
  /// * [DateTime] dataInicio:
  ///   Data do início do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas, no formato `AAAA-MM-DD`. Se omitido, é assumido como a data de 30 dias anteriores à proposição
  ///
  /// * [DateTime] dataFim:
  ///   Data do fim do intervalo de tempo em que tenha havido tramitação das proposições a serem listadas. Se omitido, é considerado ser o dia em que é feita a requisição
  ///
  /// * [DateTime] dataApresentacaoInicio:
  ///   Data do início do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas, no formato `AAAA-MM-DD`
  ///
  /// * [DateTime] dataApresentacaoFim:
  ///   Data do fim do intervalo de tempo em que tenham sido apresentadas as proposições a serem listadas
  ///
  /// * [List<String>] codSituacao:
  ///   Código(s) numérico(s), separados por vírgulas, do tipo de situação em que se encontram as proposições que serão listadas. As situações possíveis podem ser obtidas em `/referencias/proposicoes/codSituacao`. **Atenção:** este parâmetro pode apresentar resultados inesperados, por problemas com o registro dos dados.
  ///
  /// * [List<String>] codTema:
  ///   Código(s) numérico(s), separados por vírgulas, das áreas temáticas das proposições que serão listadas. Os temas possíveis podem ser obtidos em `/referencias/proposicoes/codTema`
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `codTipo`, `siglaTipo`, `numero` ou `ano`
  ///
  /// * [String] accept:
  Future<ResultadoProposicoes?> search({ List<String>? id, List<String>? siglaTipo, List<String>? numero, List<String>? ano, List<String>? codTipo, List<String>? idDeputadoAutor, String? autor, List<String>? siglaPartidoAutor, int? idPartidoAutor, List<String>? siglaUfAutor, List<String>? keywords, bool? tramitacaoSenado, DateTime? dataInicio, DateTime? dataFim, DateTime? dataApresentacaoInicio, DateTime? dataApresentacaoFim, List<String>? codSituacao, List<String>? codTema, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await searchWithHttpInfo(id: id, siglaTipo: siglaTipo, numero: numero, ano: ano, codTipo: codTipo, idDeputadoAutor: idDeputadoAutor, autor: autor, siglaPartidoAutor: siglaPartidoAutor, idPartidoAutor: idPartidoAutor, siglaUfAutor: siglaUfAutor, keywords: keywords, tramitacaoSenado: tramitacaoSenado, dataInicio: dataInicio, dataFim: dataFim, dataApresentacaoInicio: dataApresentacaoInicio, dataApresentacaoFim: dataApresentacaoFim, codSituacao: codSituacao, codTema: codTema, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoProposicoes',) as ResultadoProposicoes;
    
    }
    return null;
  }
}
