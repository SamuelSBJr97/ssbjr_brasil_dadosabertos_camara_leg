//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class RgosApi {
  RgosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Informações detalhadas sobre um órgão da Câmara
  ///
  /// Retorna todas as informações disponíveis sobre o órgão da Câmara identificado por `id`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [String] accept:
  Future<Response> getOrgaoDetalheWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orgaos/{id}'
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

  /// Informações detalhadas sobre um órgão da Câmara
  ///
  /// Retorna todas as informações disponíveis sobre o órgão da Câmara identificado por `id`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [String] accept:
  Future<ResultadoOrgaoDetalhe?> getOrgaoDetalhe(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getOrgaoDetalheWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoOrgaoDetalhe',) as ResultadoOrgaoDetalhe;
    
    }
    return null;
  }

  /// Os eventos ocorridos ou previstos em um órgão legislativo
  ///
  /// Retorna uma lista de informações resumidas dos eventos realizados (ou a realizar) pelo órgão legislativo identificado por `{id}`. Por padrão, são retornados eventos em andamento ou previstos para o mesmo dia, dois dias antes e dois dias depois da requisição. Parâmetros podem ser passados para alterar esse período, bem como os tipos de eventos.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [List<String>] idTipoEvento:
  ///   Um ou mais identificador(es) numérico(s) de tipos de evento que se deseja obter. os valores válidos podem ser obtidos por uma requisição anterior a `/referencias/tiposEvento`.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
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
  ///   Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
  ///
  /// * [String] accept:
  Future<Response> getOrgaoEventosDetalheWithHttpInfo(int id, { List<String>? idTipoEvento, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orgaos/{id}/eventos'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idTipoEvento != null) {
      queryParams.addAll(_queryParams('csv', 'idTipoEvento', idTipoEvento));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
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

  /// Os eventos ocorridos ou previstos em um órgão legislativo
  ///
  /// Retorna uma lista de informações resumidas dos eventos realizados (ou a realizar) pelo órgão legislativo identificado por `{id}`. Por padrão, são retornados eventos em andamento ou previstos para o mesmo dia, dois dias antes e dois dias depois da requisição. Parâmetros podem ser passados para alterar esse período, bem como os tipos de eventos.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [List<String>] idTipoEvento:
  ///   Um ou mais identificador(es) numérico(s) de tipos de evento que se deseja obter. os valores válidos podem ser obtidos por uma requisição anterior a `/referencias/tiposEvento`.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
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
  ///   Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
  ///
  /// * [String] accept:
  Future<ResultadoOrgaoEventos?> getOrgaoEventosDetalhe(int id, { List<String>? idTipoEvento, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getOrgaoEventosDetalheWithHttpInfo(id, idTipoEvento: idTipoEvento, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoOrgaoEventos',) as ResultadoOrgaoEventos;
    
    }
    return null;
  }

  /// Lista de cargos de um órgão e parlamentares que os ocupam.
  ///
  /// Retorna uma lista de dados resumidos que identificam cada parlamentar e o cargo ou posição que ocupa ou ocupou no órgão parlamentar identificado por `{id}` durante um certo período de tempo. Se não forem passados parâmetros que delimitem esse período, o serviço retorna os membros do órgão no momento da requisição. Se o órgão não existir mais ou não estiver instalado, é retornada uma lista vazia.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato AAAA-MM-DD.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato AAAA-MM-DD.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<Response> getOrgaoMembrosWithHttpInfo(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orgaos/{id}/membros'
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
    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
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

  /// Lista de cargos de um órgão e parlamentares que os ocupam.
  ///
  /// Retorna uma lista de dados resumidos que identificam cada parlamentar e o cargo ou posição que ocupa ou ocupou no órgão parlamentar identificado por `{id}` durante um certo período de tempo. Se não forem passados parâmetros que delimitem esse período, o serviço retorna os membros do órgão no momento da requisição. Se o órgão não existir mais ou não estiver instalado, é retornada uma lista vazia.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato AAAA-MM-DD.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato AAAA-MM-DD.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<ResultadoOrgaoMembros?> getOrgaoMembros(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getOrgaoMembrosWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoOrgaoMembros',) as ResultadoOrgaoMembros;
    
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

  /// Informações detalhadas sobre votações de um órgão da Câmara
  ///
  /// Retorna uma lista de dados básicos de votações que tenham sido realizadas em eventos realizados no órgão `{id}`.  Se `{id}` for um órgão permanente da Câmara, são retornados, por padrão, dados sobre as votações realizadas pelo órgão nos últimos 30 dias. Esse período pode ser alterado com o uso dos parâmetros `dataInicio` e/ou `dataFim`, que por enquanto são limitados a selecionar somente votações ocorridas em um mesmo ano.  Caso `{id}` seja um órgão temporário, como uma comissão especial, são listadas por padrão todas as votações ocorridas no órgão, em qualquer período de tempo.  Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [List<String>] idProposicao:
  ///   Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
  ///
  /// * [String] dataInicio:
  ///   Data em formato `AAAA-MM-DD` para início do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas votações ocorridas dessa data até o fim do mesmo ano. Se usado com `dataFim`, as duas datas devem ser de um mesmo ano.
  ///
  /// * [String] dataFim:
  ///   Data em formato `AAAA-MM-DD` que define o fim do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas todas as votações ocorridas desde 1º de janeiro do mesmo ano até esta data. Se usado com `dataInicio`, é preciso que as duas datas sejam de um mesmo ano.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição. O valor padrão e máximo para este endpoint é 100, e valores maiores serão ignorados.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada. Pode ser `id`, `idOrgao`, `siglaOrgao`, `idEvento`, `idProposicao`, `data`, `dataHoraRegistro` ou `idProposicaoObjeto`.
  ///
  /// * [String] accept:
  Future<Response> getVotacoesPorOrgaoWithHttpInfo(int id, { List<String>? idProposicao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orgaos/{id}/votacoes'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idProposicao != null) {
      queryParams.addAll(_queryParams('csv', 'idProposicao', idProposicao));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
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

  /// Informações detalhadas sobre votações de um órgão da Câmara
  ///
  /// Retorna uma lista de dados básicos de votações que tenham sido realizadas em eventos realizados no órgão `{id}`.  Se `{id}` for um órgão permanente da Câmara, são retornados, por padrão, dados sobre as votações realizadas pelo órgão nos últimos 30 dias. Esse período pode ser alterado com o uso dos parâmetros `dataInicio` e/ou `dataFim`, que por enquanto são limitados a selecionar somente votações ocorridas em um mesmo ano.  Caso `{id}` seja um órgão temporário, como uma comissão especial, são listadas por padrão todas as votações ocorridas no órgão, em qualquer período de tempo.  Dados complementares sobre cada votação listada podem ser obtidos no recurso `/votacoes/{id}`.  Para compreender melhor os dados sobre votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do órgão
  ///
  /// * [List<String>] idProposicao:
  ///   Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
  ///
  /// * [String] dataInicio:
  ///   Data em formato `AAAA-MM-DD` para início do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas votações ocorridas dessa data até o fim do mesmo ano. Se usado com `dataFim`, as duas datas devem ser de um mesmo ano.
  ///
  /// * [String] dataFim:
  ///   Data em formato `AAAA-MM-DD` que define o fim do intervalo de tempo no qual tenham sido realizadas as votações a serem listadas. Se usado sozinho, esse parâmetro faz com que sejam retornadas todas as votações ocorridas desde 1º de janeiro do mesmo ano até esta data. Se usado com `dataInicio`, é preciso que as duas datas sejam de um mesmo ano.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição. O valor padrão e máximo para este endpoint é 100, e valores maiores serão ignorados.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada. Pode ser `id`, `idOrgao`, `siglaOrgao`, `idEvento`, `idProposicao`, `data`, `dataHoraRegistro` ou `idProposicaoObjeto`.
  ///
  /// * [String] accept:
  Future<ResultadoVotacoes?> getVotacoesPorOrgao(int id, { List<String>? idProposicao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getVotacoesPorOrgaoWithHttpInfo(id, idProposicao: idProposicao, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
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

  /// A lista das comissões e outros órgãos legislativos da Câmara
  ///
  /// Retorna uma lista de informações básicas sobre os órgãos legislativos e seus identificadores, tipos e descrições.  Pela query string é possível filtrar a lista por identificadores, tipos de órgãos, sigla, situação do órgão ou período de tempo em que os órgãos estiveram ativos, se aplicável.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais identificador(es) numérico(s), separados por vírgulas.
  ///
  /// * [List<String>] sigla:
  ///   Uma ou mais sigla(s) oficialmente usadas para designar um ou mais órgão(s) da Câmara, separadas por vírgulas.
  ///
  /// * [List<String>] codTipoOrgao:
  ///   Um ou mais identificador(es) numérico(s) do(s) tipo(s) de órgãos que se deseja buscar dados. Pode(m) ser obtido(s) em `/referencias/orgaos/codTipoOrgao`.
  ///
  /// * [String] dataInicio:
  ///   Data de início, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
  ///
  /// * [String] dataFim:
  ///   Data de término, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
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
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `sigla`, `nome`, `apelido`, `codTipoOrgao`, `tipoOrgao`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<Response> listar1WithHttpInfo({ List<String>? id, List<String>? sigla, List<String>? codTipoOrgao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/orgaos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (sigla != null) {
      queryParams.addAll(_queryParams('csv', 'sigla', sigla));
    }
    if (codTipoOrgao != null) {
      queryParams.addAll(_queryParams('csv', 'codTipoOrgao', codTipoOrgao));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
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

  /// A lista das comissões e outros órgãos legislativos da Câmara
  ///
  /// Retorna uma lista de informações básicas sobre os órgãos legislativos e seus identificadores, tipos e descrições.  Pela query string é possível filtrar a lista por identificadores, tipos de órgãos, sigla, situação do órgão ou período de tempo em que os órgãos estiveram ativos, se aplicável.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais identificador(es) numérico(s), separados por vírgulas.
  ///
  /// * [List<String>] sigla:
  ///   Uma ou mais sigla(s) oficialmente usadas para designar um ou mais órgão(s) da Câmara, separadas por vírgulas.
  ///
  /// * [List<String>] codTipoOrgao:
  ///   Um ou mais identificador(es) numérico(s) do(s) tipo(s) de órgãos que se deseja buscar dados. Pode(m) ser obtido(s) em `/referencias/orgaos/codTipoOrgao`.
  ///
  /// * [String] dataInicio:
  ///   Data de início, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
  ///
  /// * [String] dataFim:
  ///   Data de término, no formato `AAAA-MM-DD`, de um intervalo de tempo no qual os órgãos buscados devem ter estado em atividade.
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
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `sigla`, `nome`, `apelido`, `codTipoOrgao`, `tipoOrgao`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<ResultadoOrgaos?> listar1({ List<String>? id, List<String>? sigla, List<String>? codTipoOrgao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await listar1WithHttpInfo(id: id, sigla: sigla, codTipoOrgao: codTipoOrgao, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoOrgaos',) as ResultadoOrgaos;
    
    }
    return null;
  }
}
