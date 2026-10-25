//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RefernciasApi {
  RefernciasApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Códigos e títulos de atividades profissionais usados na Câmara
  ///
  /// Retorna uma lista dos títulos de profissões registradas na Câmara dos Deputados (em masculino) e seus códigos.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getCodTipoProfissaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/deputados/codTipoProfissao';

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

  /// Códigos e títulos de atividades profissionais usados na Câmara
  ///
  /// Retorna uma lista dos títulos de profissões registradas na Câmara dos Deputados (em masculino) e seus códigos.
  Future<ResultadoReferencias?> getCodTipoProfissao({ Future<void>? abortTrigger, }) async {
    final response = await getCodTipoProfissaoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Valores válidos para parâmetros do endpoint `/deputados`
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /deputados. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os valores válidos para tais parâmetros. Este recurso não é disponível em formato CSV.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDeputadosWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/deputados';

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

  /// Valores válidos para parâmetros do endpoint `/deputados`
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /deputados. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os valores válidos para tais parâmetros. Este recurso não é disponível em formato CSV.
  Future<ReferenciaDeputado?> getDeputados({ Future<void>? abortTrigger, }) async {
    final response = await getDeputadosWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenciaDeputado',) as ReferenciaDeputado;
    
    }
    return null;
  }

  /// Os possíveis tipos de despesas que fazem parte da Cota Parlamentar
  ///
  /// Retorna uma lista de códigos e nomes das possíveis despesas de Cota Parlamentar: `COMBUSTÍVEIS E LUBRIFICANTES.`, `TELEFONIA`, `SERVIÇOS POSTAIS`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDespesasWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/deputados/tipoDespesa';

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

  /// Os possíveis tipos de despesas que fazem parte da Cota Parlamentar
  ///
  /// Retorna uma lista de códigos e nomes das possíveis despesas de Cota Parlamentar: `COMBUSTÍVEIS E LUBRIFICANTES.`, `TELEFONIA`, `SERVIÇOS POSTAIS`, etc.
  Future<ResultadoReferencias?> getDespesas({ Future<void>? abortTrigger, }) async {
    final response = await getDespesasWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Valores válidos para parâmetros do endpoint `/eventos`
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /eventos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getEentosWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/eventos';

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

  /// Valores válidos para parâmetros do endpoint `/eventos`
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /eventos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  Future<ReferenciaEvento?> getEentos({ Future<void>? abortTrigger, }) async {
    final response = await getEentosWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenciaEvento',) as ReferenciaEvento;
    
    }
    return null;
  }

  /// Valores válidos para parâmetros do endpoint sobre órgãos
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /orgaos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getOrgaosWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/orgaos';

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

  /// Valores válidos para parâmetros do endpoint sobre órgãos
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /orgaos. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  Future<ReferenciaOrgao?> getOrgaos({ Future<void>? abortTrigger, }) async {
    final response = await getOrgaosWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenciaOrgao',) as ReferenciaOrgao;
    
    }
    return null;
  }

  /// Valores válidos para parâmetros do endpoint sobre órgãos
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /proposicoes. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getProposicoesWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/proposicoes';

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

  /// Valores válidos para parâmetros do endpoint sobre órgãos
  ///
  /// Retorna, como valor do elemento \"dados\", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /proposicoes. Cada elemento desses tem como valor uma lista de itens (nós em XML) em que cada item representa um valor válido que pode ser atribuído ao parâmetro. Em outras palavras: uma requisição a esta URL tem como resposta uma versão agregada das respostas de todas as URLs abaixo dela. Assim, em uma só chamada é possível obter uma lista de todos os parâmetros que exigem valores predeterminados, e quais são os tais valores para cada um desses parâmetros. Este recurso não é disponível em formato CSV.
  Future<ReferenciaProposicao?> getProposicoes({ Future<void>? abortTrigger, }) async {
    final response = await getProposicoesWithHttpInfo(abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ReferenciaProposicao',) as ReferenciaProposicao;
    
    }
    return null;
  }

  /// As possíveis situações de exercício parlamentar de um deputado
  ///
  /// Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesDeputadoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/situacoesDeputado';

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

  /// As possíveis situações de exercício parlamentar de um deputado
  ///
  /// Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
  Future<ResultadoReferencias?> getSituacoesDeputado({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesDeputadoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As possíveis situações de exercício parlamentar de um deputado
  ///
  /// Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesDeputado1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/deputados/codSituacao';

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

  /// As possíveis situações de exercício parlamentar de um deputado
  ///
  /// Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: `Exercício`, `Fim de Mandato`, `Afastado`, etc.
  Future<ResultadoReferencias?> getSituacoesDeputado1({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesDeputado1WithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesEventoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/eventos/codSituacaoEvento';

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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  Future<ResultadoReferencias?> getSituacoesEvento({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesEventoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesEvento1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/situacoesEvento';

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

  /// As possíveis situações para eventos
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como `Em Andamento`, `Cancelada` e `Encerrada`.
  Future<ResultadoReferencias?> getSituacoesEvento1({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesEvento1WithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As situações em que órgãos podem se encontrar
  ///
  /// Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesOrgaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/orgaos/codSituacao';

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

  /// As situações em que órgãos podem se encontrar
  ///
  /// Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
  Future<ResultadoReferencias?> getSituacoesOrgao({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesOrgaoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As situações em que órgãos podem se encontrar
  ///
  /// Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getSituacoesOrgao1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/situacoesOrgao';

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

  /// As situações em que órgãos podem se encontrar
  ///
  /// Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como `Em funcionamento`, `Extinta`, `Pronta para criação`, etc.
  Future<ResultadoReferencias?> getSituacoesOrgao1({ Future<void>? abortTrigger, }) async {
    final response = await getSituacoesOrgao1WithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposEventoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposEvento';

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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  Future<ResultadoReferencias?> getTiposEvento({ Future<void>? abortTrigger, }) async {
    final response = await getTiposEventoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposEvento1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/eventos/codTipoEvento';

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

  /// Os tipos de eventos realizados na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como `Audiência Pública`, `Comissão Geral` e `Palestra`, entre outros.
  Future<ResultadoReferencias?> getTiposEvento1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposEvento1WithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Os tipos de órgãos que existem na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposOrgaoWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/tiposOrgao';

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

  /// Os tipos de órgãos que existem na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.
  Future<ResultadoReferencias?> getTiposOrgao({ Future<void>? abortTrigger, }) async {
    final response = await getTiposOrgaoWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// Os tipos de órgãos que existem na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getTiposOrgao1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/orgaos/codTipoOrgao';

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

  /// Os tipos de órgãos que existem na Câmara
  ///
  /// Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.
  Future<ResultadoReferencias?> getTiposOrgao1({ Future<void>? abortTrigger, }) async {
    final response = await getTiposOrgao1WithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As siglas e nomes dos estados e do Distrito Federal
  ///
  /// Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUfWithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/uf';

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

  /// As siglas e nomes dos estados e do Distrito Federal
  ///
  /// Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.
  Future<ResultadoReferencias?> getUf({ Future<void>? abortTrigger, }) async {
    final response = await getUfWithHttpInfo(abortTrigger: abortTrigger,);
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

  /// As siglas e nomes dos estados e do Distrito Federal
  ///
  /// Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getUf1WithHttpInfo({ Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/referencias/deputados/siglaUF';

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

  /// As siglas e nomes dos estados e do Distrito Federal
  ///
  /// Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.
  Future<ResultadoReferencias?> getUf1({ Future<void>? abortTrigger, }) async {
    final response = await getUf1WithHttpInfo(abortTrigger: abortTrigger,);
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
}
