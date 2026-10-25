//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class VotaesApi {
  VotaesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Informações detalhadas sobre uma votação da Câmara
  ///
  /// Retorna um conjunto detalhado de dados sobre a votação identificada por `{id}`, tais como as proposições que podem ter sido o objeto da votação e os efeitos de tramitação de outras proposições que eventualmente tenham sido cadastrados em consequência desta votação.  Para compreender melhor os dados retornados, veja o [tutorial sobre votações do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<Response> getVotacaoIDWithHttpInfo(String id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/votacoes/{id}'
      .replaceAll('{id}', id);

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

  /// Informações detalhadas sobre uma votação da Câmara
  ///
  /// Retorna um conjunto detalhado de dados sobre a votação identificada por `{id}`, tais como as proposições que podem ter sido o objeto da votação e os efeitos de tramitação de outras proposições que eventualmente tenham sido cadastrados em consequência desta votação.  Para compreender melhor os dados retornados, veja o [tutorial sobre votações do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<ResultadoVotacoesID?> getVotacaoID(String id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getVotacaoIDWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoVotacoesID',) as ResultadoVotacoesID;
    
    }
    return null;
  }

  /// O voto recomendado pelas lideranças aos seus deputados em uma votação.
  ///
  /// Em muitas votações, os líderes de partidos e blocos - as _bancadas_ - fazem recomendações de voto para seus parlamentares. Essas _orientações_ de uma votação também são feitas pelas lideranças de Governo, Minoria e as mais recentes Maioria e Oposição. Uma liderança também pode _liberar a bancada_ para que cada deputado vote como quiser, ou entrar em _obstrução_, para que seus parlamentares não sejam contados para o quórum da votação.  Se a votação identificada por `{id}` teve orientações, este recurso retorna uma lista em que cada item contém os identificadores de um partido, bloco ou liderança, e o posicionamento ou voto que foi recomendado aos seus parlamentares.  Até o momento, só estão disponíveis dados sobre orientações dadas em votações no Plenário.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<Response> getVotacaoIDOrientacoesWithHttpInfo(String id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/votacoes/{id}/orientacoes'
      .replaceAll('{id}', id);

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

  /// O voto recomendado pelas lideranças aos seus deputados em uma votação.
  ///
  /// Em muitas votações, os líderes de partidos e blocos - as _bancadas_ - fazem recomendações de voto para seus parlamentares. Essas _orientações_ de uma votação também são feitas pelas lideranças de Governo, Minoria e as mais recentes Maioria e Oposição. Uma liderança também pode _liberar a bancada_ para que cada deputado vote como quiser, ou entrar em _obstrução_, para que seus parlamentares não sejam contados para o quórum da votação.  Se a votação identificada por `{id}` teve orientações, este recurso retorna uma lista em que cada item contém os identificadores de um partido, bloco ou liderança, e o posicionamento ou voto que foi recomendado aos seus parlamentares.  Até o momento, só estão disponíveis dados sobre orientações dadas em votações no Plenário.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<ResultadoVotacoesIDOrientacoes?> getVotacaoIDOrientacoes(String id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getVotacaoIDOrientacoesWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoVotacoesIDOrientacoes',) as ResultadoVotacoesIDOrientacoes;
    
    }
    return null;
  }

  /// Como cada parlamentar votou em uma votação nominal e aberta
  ///
  /// Se `{id}` é o identificador de uma votação da Câmara _nominal_ que não tenha sido _secreta_, este _endpoint_ retorna uma lista em que cada item contém os identificadores básicos de um deputado e o voto ou posicionamento que ele registrou.   O resultado é uma lista vazia se `{id}` foi uma votação _simbólica_, em que os votos individuais não são contabilizados. Mas há algumas votações simbólicas que também têm registros de \\\"votos\\\": nesses casos, normalmente se trata de parlamentares que pediram expressamente que seus posicionamentos fossem registrados.  Não são listados parlamentares ausentes à votação.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<Response> getVotacaoVotosPorIdWithHttpInfo(String id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/votacoes/{id}/votos'
      .replaceAll('{id}', id);

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

  /// Como cada parlamentar votou em uma votação nominal e aberta
  ///
  /// Se `{id}` é o identificador de uma votação da Câmara _nominal_ que não tenha sido _secreta_, este _endpoint_ retorna uma lista em que cada item contém os identificadores básicos de um deputado e o voto ou posicionamento que ele registrou.   O resultado é uma lista vazia se `{id}` foi uma votação _simbólica_, em que os votos individuais não são contabilizados. Mas há algumas votações simbólicas que também têm registros de \\\"votos\\\": nesses casos, normalmente se trata de parlamentares que pediram expressamente que seus posicionamentos fossem registrados.  Não são listados parlamentares ausentes à votação.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   Identificador alfanumérico da votação
  ///
  /// * [String] accept:
  Future<ResultadoVotacoesIDVotos?> getVotacaoVotosPorId(String id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getVotacaoVotosPorIdWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoVotacoesIDVotos',) as ResultadoVotacoesIDVotos;
    
    }
    return null;
  }

  /// Lista das votações da Câmara
  ///
  /// Retorna uma lista de informações básicas sobre as votações ocorridas em eventos dos diversos órgãos da Câmara.  Se não forem passados parâmetros que delimitem o intervalo de tempo da pesquisa, são retornados dados sobre todas as votações ocorridas nos últimos 30 dias, em eventos de todos os órgãos.  Os parâmetros de data permitem estender o período, mas por enquanto é **necessário** que as duas datas sejam de um mesmo ano. Quando apenas uma delas está presente, são retornadas somente as votações ocorridas no mesmo ano, antes de `dataFim` ou após `dataInicio`.  Também é possível filtrar a listagem por identificadores de órgãos da Câmara, de proposições e de eventos.  Quando não há identificação da proposição que foi efetivamente votada, é preciso consultar o endpoint `/votacoes/{id}` para obter uma lista de proposições das quais uma pode ter sido o objeto da votação.  Para mais informações sobre o uso dos endpoints de votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais identificador(es) alfanuméricos de votação, separados por vírgulas, para que seja(m) listado(s) dados sobre uma ou mais votações específicas.
  ///
  /// * [List<String>] idProposicao:
  ///   Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
  ///
  /// * [List<String>] idEvento:
  ///   Identificador de um ou mais evento(s) realizado(s) na Câmara, separados por vírgula, nos quais tenham sido realizadas as votações a serem listadas. Os identificadores podem ser obtidos por meio do recurso `/eventos`. Somente os eventos deliberativos podem ter votações. Os eventos podem ter ocorrido fora do intervalo de tempo padrão ou definido por `dataInicio` e/ou `dataFim`.
  ///
  /// * [List<String>] idOrgao:
  ///   Um ou mais identificador(es) numéricos de órgãos da Câmara, separados por vírgulas. Se presente, serão retornadas somente votações dos órgãos enumerados. Os identificadores existentes podem ser obtidos por meio do recurso `/orgaos`.
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
  Future<Response> listarWithHttpInfo({ List<String>? id, List<String>? idProposicao, List<String>? idEvento, List<String>? idOrgao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/votacoes';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (idProposicao != null) {
      queryParams.addAll(_queryParams('csv', 'idProposicao', idProposicao));
    }
    if (idEvento != null) {
      queryParams.addAll(_queryParams('csv', 'idEvento', idEvento));
    }
    if (idOrgao != null) {
      queryParams.addAll(_queryParams('csv', 'idOrgao', idOrgao));
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

  /// Lista das votações da Câmara
  ///
  /// Retorna uma lista de informações básicas sobre as votações ocorridas em eventos dos diversos órgãos da Câmara.  Se não forem passados parâmetros que delimitem o intervalo de tempo da pesquisa, são retornados dados sobre todas as votações ocorridas nos últimos 30 dias, em eventos de todos os órgãos.  Os parâmetros de data permitem estender o período, mas por enquanto é **necessário** que as duas datas sejam de um mesmo ano. Quando apenas uma delas está presente, são retornadas somente as votações ocorridas no mesmo ano, antes de `dataFim` ou após `dataInicio`.  Também é possível filtrar a listagem por identificadores de órgãos da Câmara, de proposições e de eventos.  Quando não há identificação da proposição que foi efetivamente votada, é preciso consultar o endpoint `/votacoes/{id}` para obter uma lista de proposições das quais uma pode ter sido o objeto da votação.  Para mais informações sobre o uso dos endpoints de votações, veja [a página de tutorial do Portal de Dados Abertos](https://dadosabertos.camara.leg.br/howtouse/2020-02-07-dados-votacoes.html).
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais identificador(es) alfanuméricos de votação, separados por vírgulas, para que seja(m) listado(s) dados sobre uma ou mais votações específicas.
  ///
  /// * [List<String>] idProposicao:
  ///   Um ou mais identificador(es) numéricos de proposições, que podem ser obtidos por meio do recurso `/proposicoes`. Se presente, listará as votações que tiveram a(s) proposição(ções) como objeto de votação ou que afetaram as proposições listadas.
  ///
  /// * [List<String>] idEvento:
  ///   Identificador de um ou mais evento(s) realizado(s) na Câmara, separados por vírgula, nos quais tenham sido realizadas as votações a serem listadas. Os identificadores podem ser obtidos por meio do recurso `/eventos`. Somente os eventos deliberativos podem ter votações. Os eventos podem ter ocorrido fora do intervalo de tempo padrão ou definido por `dataInicio` e/ou `dataFim`.
  ///
  /// * [List<String>] idOrgao:
  ///   Um ou mais identificador(es) numéricos de órgãos da Câmara, separados por vírgulas. Se presente, serão retornadas somente votações dos órgãos enumerados. Os identificadores existentes podem ser obtidos por meio do recurso `/orgaos`.
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
  Future<ResultadoVotacoes?> listar({ List<String>? id, List<String>? idProposicao, List<String>? idEvento, List<String>? idOrgao, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await listarWithHttpInfo(id: id, idProposicao: idProposicao, idEvento: idEvento, idOrgao: idOrgao, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
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
}
