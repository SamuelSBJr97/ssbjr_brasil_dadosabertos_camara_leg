//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class LegislaturasApi {
  LegislaturasApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Os períodos de mandatos e atividades parlamentares da Câmara
  ///
  /// Legislatura é o nome dado ao período de trabalhos parlamentares entre uma eleição e outra.  Este serviço retorna uma lista em que cada item contém as informações básicas sobre um desses períodos.  Os números que identificam as legislaturas são sequenciais, desde a primeira que ocorreu.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais número(s) de legislatura(s), separados por vírgulas. Se omitido, serão retornados dados sobre todas as legislaturas.
  ///
  /// * [String] data:
  ///   Uma ou mais data(s) no formato `AAAA-MM-DD`, separadas por vírgulas. Se este parâmetro estiver presente, a requisição retornará as informações básicas sobre as legislaturas que estavam em curso nas datas informadas.
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
  Future<Response> getLegislaturaWithHttpInfo({ List<String>? id, String? data, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/legislaturas';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
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

  /// Os períodos de mandatos e atividades parlamentares da Câmara
  ///
  /// Legislatura é o nome dado ao período de trabalhos parlamentares entre uma eleição e outra.  Este serviço retorna uma lista em que cada item contém as informações básicas sobre um desses períodos.  Os números que identificam as legislaturas são sequenciais, desde a primeira que ocorreu.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Um ou mais número(s) de legislatura(s), separados por vírgulas. Se omitido, serão retornados dados sobre todas as legislaturas.
  ///
  /// * [String] data:
  ///   Uma ou mais data(s) no formato `AAAA-MM-DD`, separadas por vírgulas. Se este parâmetro estiver presente, a requisição retornará as informações básicas sobre as legislaturas que estavam em curso nas datas informadas.
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
  Future<ResultadoLegislaturas?> getLegislatura({ List<String>? id, String? data, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getLegislaturaWithHttpInfo(id: id, data: data, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoLegislaturas',) as ResultadoLegislaturas;
    
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

  /// Informações extras sobre uma determinada legislatura da Câmara
  ///
  /// Retorna informações adicionais sobre o período de atividades da Câmara identificado por `{id}`. 
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número da legislatura da qual se quer os dados.
  ///
  /// * [String] accept:
  Future<Response> obterPorId1WithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/legislaturas/{id}'
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

  /// Informações extras sobre uma determinada legislatura da Câmara
  ///
  /// Retorna informações adicionais sobre o período de atividades da Câmara identificado por `{id}`. 
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número da legislatura da qual se quer os dados.
  ///
  /// * [String] accept:
  Future<ResultadoLegislaturasDetalhe?> obterPorId1(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterPorId1WithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoLegislaturasDetalhe',) as ResultadoLegislaturasDetalhe;
    
    }
    return null;
  }
}
