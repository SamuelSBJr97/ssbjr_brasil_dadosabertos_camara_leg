//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DeputadosApi {
  DeputadosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Outros cargos eletivos já exercidos pelo parlamentar em sua carreira.
  ///
  /// Retorna uma lista em que cada item traz informações básicas sobre um cargo para o qual o parlamentar identificado por {id} tenha sido eleito, em sua carreira política fora da Câmara dos Deputados. Estes dados são fornecidos pelo Tribunal Superior Eleitoral. A lista vem ordenada cronologicamente, por padrão.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<Response> buscar1WithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/mandatosExternos'
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

  /// Outros cargos eletivos já exercidos pelo parlamentar em sua carreira.
  ///
  /// Retorna uma lista em que cada item traz informações básicas sobre um cargo para o qual o parlamentar identificado por {id} tenha sido eleito, em sua carreira política fora da Câmara dos Deputados. Estes dados são fornecidos pelo Tribunal Superior Eleitoral. A lista vem ordenada cronologicamente, por padrão.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoMandatoExterno?> buscar1(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await buscar1WithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoMandatoExterno',) as ResultadoDeputadoMandatoExterno;
    
    }
    return null;
  }

  /// As despesas com exercício parlamentar do deputado
  ///
  /// Dá acesso aos registros de pagamentos e reembolsos feitos pela Câmara em prol do deputado identificado por `{id}`, a título da Cota para Exercício da Atividade Parlamentar, a chamada \"cota parlamentar\".  A lista pode ser filtrada por mês, ano, legislatura, CNPJ ou CPF de um fornecedor.  Se não forem passados os parâmetros de tempo, o serviço retorna os dados dos __seis meses anteriores à requisição__.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) de uma ou mais legislatura(s), separados por vírgulas, em que tenham ocorrido as despesas.
  ///
  /// * [List<String>] ano:
  ///   Um ou mais ano(s) de ocorrência das despesas.
  ///
  /// * [List<String>] mes:
  ///   Um ou mais número(s) do(s) mês(es) de ocorrência das despesas.
  ///
  /// * [String] cnpjCpfFornecedor:
  ///   CNPJ de uma pessoa jurídica, ou CPF de uma pessoa física, fornecedora do produto ou serviço (apenas números)
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
  ///   Nome do campo pelo qual a lista deverá ser ordenada: qualquer um dos campos do retorno, e também `idLegislatura`
  ///
  /// * [String] accept:
  Future<Response> getDeputadoDespesasWithHttpInfo(int id, { List<String>? idLegislatura, List<String>? ano, List<String>? mes, String? cnpjCpfFornecedor, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/despesas'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
    }
    if (ano != null) {
      queryParams.addAll(_queryParams('csv', 'ano', ano));
    }
    if (mes != null) {
      queryParams.addAll(_queryParams('csv', 'mes', mes));
    }
    if (cnpjCpfFornecedor != null) {
      queryParams.addAll(_queryParams('', 'cnpjCpfFornecedor', cnpjCpfFornecedor));
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

  /// As despesas com exercício parlamentar do deputado
  ///
  /// Dá acesso aos registros de pagamentos e reembolsos feitos pela Câmara em prol do deputado identificado por `{id}`, a título da Cota para Exercício da Atividade Parlamentar, a chamada \"cota parlamentar\".  A lista pode ser filtrada por mês, ano, legislatura, CNPJ ou CPF de um fornecedor.  Se não forem passados os parâmetros de tempo, o serviço retorna os dados dos __seis meses anteriores à requisição__.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) de uma ou mais legislatura(s), separados por vírgulas, em que tenham ocorrido as despesas.
  ///
  /// * [List<String>] ano:
  ///   Um ou mais ano(s) de ocorrência das despesas.
  ///
  /// * [List<String>] mes:
  ///   Um ou mais número(s) do(s) mês(es) de ocorrência das despesas.
  ///
  /// * [String] cnpjCpfFornecedor:
  ///   CNPJ de uma pessoa jurídica, ou CPF de uma pessoa física, fornecedora do produto ou serviço (apenas números)
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
  ///   Nome do campo pelo qual a lista deverá ser ordenada: qualquer um dos campos do retorno, e também `idLegislatura`
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoDespesas?> getDeputadoDespesas(int id, { List<String>? idLegislatura, List<String>? ano, List<String>? mes, String? cnpjCpfFornecedor, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoDespesasWithHttpInfo(id, idLegislatura: idLegislatura, ano: ano, mes: mes, cnpjCpfFornecedor: cnpjCpfFornecedor, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoDespesas',) as ResultadoDeputadoDespesas;
    
    }
    return null;
  }

  /// As frentes parlamentares das quais um deputado é integrante
  ///
  /// Retorna uma lista de informações básicas sobre as frentes parlamentares das quais o parlamentar identificado por `{id}` seja membro, ou, no caso de frentes existentes em legislaturas anteriores, tenha encerrado a legislatura como integrante.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<Response> getDeputadoDiscursosWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/frentes'
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

  /// As frentes parlamentares das quais um deputado é integrante
  ///
  /// Retorna uma lista de informações básicas sobre as frentes parlamentares das quais o parlamentar identificado por `{id}` seja membro, ou, no caso de frentes existentes em legislaturas anteriores, tenha encerrado a legislatura como integrante.  
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoIdDeputadoMembro?> getDeputadoDiscursos(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoDiscursosWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoIdDeputadoMembro',) as ResultadoIdDeputadoMembro;
    
    }
    return null;
  }

  /// Os discursos feitos por um deputado em eventos diversos
  ///
  /// Retorna uma lista de informações sobre os pronunciamentos feitos pelo deputado identificado por {id} que tenham sido registrados, em quaisquer eventos, nos sistemas da Câmara.  Caso os parâmetros de tempo (`dataInicio`, `dataFim` e `idLegislatura`) não sejam configurados na requisição, são buscados os discursos ocorridos nos sete dias anteriores ao da requisição.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordenarPor:
  ///   Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [String] accept:
  Future<Response> getDeputadoDiscursos1WithHttpInfo(int id, { List<String>? idLegislatura, String? dataInicio, String? dataFim, String? ordenarPor, String? ordem, int? itens, int? pagina, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/discursos'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
    }
    if (ordenarPor != null) {
      queryParams.addAll(_queryParams('', 'ordenarPor', ordenarPor));
    }
    if (ordem != null) {
      queryParams.addAll(_queryParams('', 'ordem', ordem));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
    }
    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
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

  /// Os discursos feitos por um deputado em eventos diversos
  ///
  /// Retorna uma lista de informações sobre os pronunciamentos feitos pelo deputado identificado por {id} que tenham sido registrados, em quaisquer eventos, nos sistemas da Câmara.  Caso os parâmetros de tempo (`dataInicio`, `dataFim` e `idLegislatura`) não sejam configurados na requisição, são buscados os discursos ocorridos nos sete dias anteriores ao da requisição.  
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordenarPor:
  ///   Qual dos elementos da representação deverá ser usado para aplicar ordenação à lista.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoDiscurso?> getDeputadoDiscursos1(int id, { List<String>? idLegislatura, String? dataInicio, String? dataFim, String? ordenarPor, String? ordem, int? itens, int? pagina, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoDiscursos1WithHttpInfo(id, idLegislatura: idLegislatura, dataInicio: dataInicio, dataFim: dataFim, ordenarPor: ordenarPor, ordem: ordem, itens: itens, pagina: pagina, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoDiscurso',) as ResultadoDeputadoDiscurso;
    
    }
    return null;
  }

  /// Lista de mudanças no exercício parlamentar de um deputado (versão GraphQL otimizada)
  ///
  /// Endpoint alternativo que busca o histórico do deputado via API GraphQL externa de alta performance, retornando a mesma estrutura de dados do endpoint v1.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<Response> getDeputadoHistoricoV2WithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/historico'
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

  /// Lista de mudanças no exercício parlamentar de um deputado (versão GraphQL otimizada)
  ///
  /// Endpoint alternativo que busca o histórico do deputado via API GraphQL externa de alta performance, retornando a mesma estrutura de dados do endpoint v1.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoHistorico?> getDeputadoHistoricoV2(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoHistoricoV2WithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoHistorico',) as ResultadoDeputadoHistorico;
    
    }
    return null;
  }

  /// Os órgãos dos quais um deputado é integrante
  ///
  /// Retorna uma lista de órgãos, como as comissões e procuradorias, dos quais o deputado identificado por `{id}` participa ou participou durante um intervalo de tempo.  Cada item identifica um órgão, o cargo ocupado pelo parlamentar neste órgão (como presidente, vice-presidente, titular ou suplente) e as datas de início e fim da ocupação deste cargo.  Se não for passado algum parâmetro de tempo, são retornados os órgãos ocupados pelo parlamentar __no momento da requisição__. Neste caso a lista será vazia se o deputado não estiver em exercício.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
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
  ///   Nome do campo de dados pelo qual a lista deve ser ordenada: `idOrgao`, `siglaOrgao`, `nomeOrgao`, `titulo`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<Response> getDeputadoOrgaosWithHttpInfo(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/orgaos'
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

  /// Os órgãos dos quais um deputado é integrante
  ///
  /// Retorna uma lista de órgãos, como as comissões e procuradorias, dos quais o deputado identificado por `{id}` participa ou participou durante um intervalo de tempo.  Cada item identifica um órgão, o cargo ocupado pelo parlamentar neste órgão (como presidente, vice-presidente, titular ou suplente) e as datas de início e fim da ocupação deste cargo.  Se não for passado algum parâmetro de tempo, são retornados os órgãos ocupados pelo parlamentar __no momento da requisição__. Neste caso a lista será vazia se o deputado não estiver em exercício.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
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
  ///   Nome do campo de dados pelo qual a lista deve ser ordenada: `idOrgao`, `siglaOrgao`, `nomeOrgao`, `titulo`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoOrgaos?> getDeputadoOrgaos(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoOrgaosWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoOrgaos',) as ResultadoDeputadoOrgaos;
    
    }
    return null;
  }

  /// As profissões que o parlamentar declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência
  ///
  /// Retorna uma lista de dados sobre profissões que o parlamentar identificado por `{id}` declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência.  
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<Response> getDeputadoProfissaoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/profissoes'
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

  /// As profissões que o parlamentar declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência
  ///
  /// Retorna uma lista de dados sobre profissões que o parlamentar identificado por `{id}` declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência.  
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoProfissoes?> getDeputadoProfissao(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getDeputadoProfissaoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoProfissoes',) as ResultadoDeputadoProfissoes;
    
    }
    return null;
  }

  /// Uma lista de eventos com a participação do parlamentar
  ///
  /// Retorna uma lista de objetos `evento` nos quais a participação do parlamentar identificado por `{id}` era ou é prevista.  Um período de tempo pode ser delimitado para a busca.  Se não forem passados parâmetros de tempo, são retornados os eventos num período de __cinco dias__, sendo dois antes e dois depois do dia da requisição.  Os itens podem ser ordenados por `id`, `siglaOrgao` ou `dataHoraInicio`.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
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
  Future<Response> getEventoWithHttpInfo(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/eventos'
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

  /// Uma lista de eventos com a participação do parlamentar
  ///
  /// Retorna uma lista de objetos `evento` nos quais a participação do parlamentar identificado por `{id}` era ou é prevista.  Um período de tempo pode ser delimitado para a busca.  Se não forem passados parâmetros de tempo, são retornados os eventos num período de __cinco dias__, sendo dois antes e dois depois do dia da requisição.  Os itens podem ser ordenados por `id`, `siglaOrgao` ou `dataHoraInicio`.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico do parlamentar.
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
  Future<ResultadoDeputadoEventos?> getEvento(int id, { String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getEventoWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoEventos',) as ResultadoDeputadoEventos;
    
    }
    return null;
  }

  /// Os empregos e atividades que o(a) deputado(a) já teve
  ///
  /// Enumera as atividades profissionais ou ocupacionais que o deputado identificado por `{id}` já teve em sua carreira e declarou à Câmara dos Deputados.  *ATENÇÃO:* Há problemas reconhecidos de estruturação nesses dados. Os casos encontrados podem ser reportados ao Centro de Documentação e Informação da Câmara, por meio do endereço https://camara.leg.br/faleconosco .
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<Response> getOcupacoesDeputadosWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}/ocupacoes'
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

  /// Os empregos e atividades que o(a) deputado(a) já teve
  ///
  /// Enumera as atividades profissionais ou ocupacionais que o deputado identificado por `{id}` já teve em sua carreira e declarou à Câmara dos Deputados.  *ATENÇÃO:* Há problemas reconhecidos de estruturação nesses dados. Os casos encontrados podem ser reportados ao Centro de Documentação e Informação da Câmara, por meio do endereço https://camara.leg.br/faleconosco .
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   O identificador numérico da entidade.
  ///
  /// * [String] accept:
  Future<ResultadoOcupacoesDeputado?> getOcupacoesDeputados(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getOcupacoesDeputadosWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoOcupacoesDeputado',) as ResultadoOcupacoesDeputado;
    
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

  /// Informações detalhadas sobre um deputado específico
  ///
  ///  Retorna os dados cadastrais de um parlamentar identificado por `{id}` que, em algum momento da história e por qualquer período, entrou em exercício na Câmara.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<Response> obterDeputadoID1WithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados/{id}'
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

  /// Informações detalhadas sobre um deputado específico
  ///
  ///  Retorna os dados cadastrais de um parlamentar identificado por `{id}` que, em algum momento da história e por qualquer período, entrou em exercício na Câmara.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Identificador numérico do parlamentar.
  ///
  /// * [String] accept:
  Future<ResultadoDeputadoID?> obterDeputadoID1(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterDeputadoID1WithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputadoID',) as ResultadoDeputadoID;
    
    }
    return null;
  }

  /// Listagem e busca de deputados, segundo critérios
  ///
  /// Retorna uma lista de dados básicos sobre deputados que estiveram em exercício parlamentar em algum intervalo de tempo.  Se não for passado um parâmetro de tempo, como `idLegislatura` ou `dataInicio`, a lista enumerará somente os deputados _em exercício no momento da requisição_.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de um deputado, separados por vírgulas.
  ///
  /// * [String] nome:
  ///   Parte nome parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) identificador(es) de uma ou mais legislatura(s) de que os parlamentares tenham participado, separados por vírgulas.
  ///
  /// * [List<String>] siglaUf:
  ///   Uma ou mais sigla(s) de unidades federativas (estados e Distrito Federal). Uma lista de siglas válidas pode ser obtida em `/referencias/deputados/siglaUf`. Se ausente, serão retornados deputados de todos os estados.
  ///
  /// * [List<String>] siglaPartido:
  ///   Uma ou mais sigla(s) de partidos aos quais sejam filiados os deputados. Para obter as siglas válidas, consulte `/partidos`. __Atenção:__ partidos diferentes podem usar a mesma sigla em diferentes legislaturas!
  ///
  /// * [String] siglaSexo:
  ///   Letra que designe o gênero dos parlamentares que se deseja buscar, sendo M para masculino e F para feminino
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `idLegislatura`, `nome`, `siglaUF` ou `siglaPartido`
  ///
  /// * [String] accept:
  Future<Response> obterDeputadosWithHttpInfo({ List<String>? id, String? nome, List<String>? idLegislatura, List<String>? siglaUf, List<String>? siglaPartido, String? siglaSexo, int? pagina, int? itens, String? dataInicio, String? dataFim, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/deputados';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (nome != null) {
      queryParams.addAll(_queryParams('', 'nome', nome));
    }
    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
    }
    if (siglaUf != null) {
      queryParams.addAll(_queryParams('csv', 'siglaUf', siglaUf));
    }
    if (siglaPartido != null) {
      queryParams.addAll(_queryParams('csv', 'siglaPartido', siglaPartido));
    }
    if (siglaSexo != null) {
      queryParams.addAll(_queryParams('', 'siglaSexo', siglaSexo));
    }
    if (pagina != null) {
      queryParams.addAll(_queryParams('', 'pagina', pagina));
    }
    if (itens != null) {
      queryParams.addAll(_queryParams('', 'itens', itens));
    }
    if (dataInicio != null) {
      queryParams.addAll(_queryParams('', 'dataInicio', dataInicio));
    }
    if (dataFim != null) {
      queryParams.addAll(_queryParams('', 'dataFim', dataFim));
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

  /// Listagem e busca de deputados, segundo critérios
  ///
  /// Retorna uma lista de dados básicos sobre deputados que estiveram em exercício parlamentar em algum intervalo de tempo.  Se não for passado um parâmetro de tempo, como `idLegislatura` ou `dataInicio`, a lista enumerará somente os deputados _em exercício no momento da requisição_.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de um deputado, separados por vírgulas.
  ///
  /// * [String] nome:
  ///   Parte nome parlamentar.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) identificador(es) de uma ou mais legislatura(s) de que os parlamentares tenham participado, separados por vírgulas.
  ///
  /// * [List<String>] siglaUf:
  ///   Uma ou mais sigla(s) de unidades federativas (estados e Distrito Federal). Uma lista de siglas válidas pode ser obtida em `/referencias/deputados/siglaUf`. Se ausente, serão retornados deputados de todos os estados.
  ///
  /// * [List<String>] siglaPartido:
  ///   Uma ou mais sigla(s) de partidos aos quais sejam filiados os deputados. Para obter as siglas válidas, consulte `/partidos`. __Atenção:__ partidos diferentes podem usar a mesma sigla em diferentes legislaturas!
  ///
  /// * [String] siglaSexo:
  ///   Letra que designe o gênero dos parlamentares que se deseja buscar, sendo M para masculino e F para feminino
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] ordem:
  ///   O sentido da ordenação: `asc` para A a Z ou 0 a 9, e `desc` para Z a A ou 9 a 0.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `idLegislatura`, `nome`, `siglaUF` ou `siglaPartido`
  ///
  /// * [String] accept:
  Future<ResultadoDeputado?> obterDeputados({ List<String>? id, String? nome, List<String>? idLegislatura, List<String>? siglaUf, List<String>? siglaPartido, String? siglaSexo, int? pagina, int? itens, String? dataInicio, String? dataFim, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterDeputadosWithHttpInfo(id: id, nome: nome, idLegislatura: idLegislatura, siglaUf: siglaUf, siglaPartido: siglaPartido, siglaSexo: siglaSexo, pagina: pagina, itens: itens, dataInicio: dataInicio, dataFim: dataFim, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoDeputado',) as ResultadoDeputado;
    
    }
    return null;
  }

  /// Lista de líderes, vice-líderes e representantes na legislatura
  ///
  /// Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura `{id}`. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id (required):
  ///   Número da legislatura da qual se deseja os dados.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<Response> obterLideres1WithHttpInfo(List<String> id, { int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/legislaturas/{id}/lideres'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

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

  /// Lista de líderes, vice-líderes e representantes na legislatura
  ///
  /// Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura `{id}`. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id (required):
  ///   Número da legislatura da qual se deseja os dados.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<ResultadoLegislaturaIDLideres?> obterLideres1(List<String> id, { int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterLideres1WithHttpInfo(id, pagina: pagina, itens: itens, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoLegislaturaIDLideres',) as ResultadoLegislaturaIDLideres;
    
    }
    return null;
  }

  /// Quais deputados fizeram parte da Mesa Diretora em uma legislatura
  ///
  /// Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por `{id}`.  Normalmente, cada legislatura tem duas Mesas Diretoras, com presidente, dois vice-presidentes, quatro secretários parlamentares e os suplentes dos secretários.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número da legislatura da qual se deseja os dados.
  ///
  /// * [String] dataInicio:
  ///   Dia de início do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
  ///
  /// * [String] accept:
  Future<Response> obterMesaPorIdWithHttpInfo(int id, { String? dataInicio, String? dataFim, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/legislaturas/{id}/mesa'
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

  /// Quais deputados fizeram parte da Mesa Diretora em uma legislatura
  ///
  /// Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por `{id}`.  Normalmente, cada legislatura tem duas Mesas Diretoras, com presidente, dois vice-presidentes, quatro secretários parlamentares e os suplentes dos secretários.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número da legislatura da qual se deseja os dados.
  ///
  /// * [String] dataInicio:
  ///   Dia de início do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término do intervalo de tempo do qual se deseja saber a composição da Mesa, no formato `AAAA-MM-DD`.
  ///
  /// * [String] accept:
  Future<ResultadoLegislaturaIDMesa?> obterMesaPorId(int id, { String? dataInicio, String? dataFim, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterMesaPorIdWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoLegislaturaIDMesa',) as ResultadoLegislaturaIDMesa;
    
    }
    return null;
  }
}
