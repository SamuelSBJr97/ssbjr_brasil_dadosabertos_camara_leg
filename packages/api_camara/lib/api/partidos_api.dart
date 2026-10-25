//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class PartidosApi {
  PartidosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Uma lista dos parlamentares de um partido durante um período
  ///
  /// Retorna uma lista de deputados que estão ou estiveram em exercício pelo partido `{id}`.  Opcionalmente, pode-se usar os parâmetros `dataInicio`, `dataFim` ou `idLegislatura` para se obter uma lista de deputados filiados ao partido num certo intervalo de tempo. Isso é equivalente ao serviço `/deputados` com filtro por partido, mas é melhor para obter informações sobre membros de partidos já extintos.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id do Partido
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [Set<int>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `nome`, `siglaUf`
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
  Future<Response> getMembrosWithHttpInfo(int id, { String? dataInicio, String? dataFim, Set<int>? idLegislatura, String? ordenarPor, String? ordem, int? itens, int? pagina, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/partidos/{id}/membros'
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
    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('multi', 'idLegislatura', idLegislatura));
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

  /// Uma lista dos parlamentares de um partido durante um período
  ///
  /// Retorna uma lista de deputados que estão ou estiveram em exercício pelo partido `{id}`.  Opcionalmente, pode-se usar os parâmetros `dataInicio`, `dataFim` ou `idLegislatura` para se obter uma lista de deputados filiados ao partido num certo intervalo de tempo. Isso é equivalente ao serviço `/deputados` com filtro por partido, mas é melhor para obter informações sobre membros de partidos já extintos.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id do Partido
  ///
  /// * [String] dataInicio:
  ///   Data de início de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [String] dataFim:
  ///   Data de término de um intervalo de tempo, no formato `AAAA-MM-DD`.
  ///
  /// * [Set<int>] idLegislatura:
  ///   Número da(s) legislatura(s), separados por vírgulas, às quais os dados buscados devem corresponder.
  ///
  /// * [String] ordenarPor:
  ///   Nome do campo pelo qual a lista será ordenada: `id`, `nome`, `siglaUf`
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
  Future<ResultadoPartidosIDMembros?> getMembros(int id, { String? dataInicio, String? dataFim, Set<int>? idLegislatura, String? ordenarPor, String? ordem, int? itens, int? pagina, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getMembrosWithHttpInfo(id, dataInicio: dataInicio, dataFim: dataFim, idLegislatura: idLegislatura, ordenarPor: ordenarPor, ordem: ordem, itens: itens, pagina: pagina, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoPartidosIDMembros',) as ResultadoPartidosIDMembros;
    
    }
    return null;
  }

  /// Informações detalhadas sobre um partido
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id do Partido
  ///
  /// * [String] accept:
  Future<Response> getPartidoWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/partidos/{id}'
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

  /// Informações detalhadas sobre um partido
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Id do Partido
  ///
  /// * [String] accept:
  Future<ResultadoPartidosID?> getPartido(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await getPartidoWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoPartidosID',) as ResultadoPartidosID;
    
    }
    return null;
  }

  /// Os partidos políticos que têm ou já tiveram parlamentares em exercício na Câmara
  ///
  /// Retorna uma lista de dados básicos sobre os partidos políticos que têm ou já tiveram deputados na Câmara. Se não forem passados parâmetros, o serviço retorna os partidos que têm deputados em exercício no momento da requisição.  É possível obter uma lista de partidos representados na Câmara em um certo intervalo de datas ou de legislaturas. Se um intervalo e uma ou mais legislatura(s) não coincidentes forem passados, todos os intervalos de tempo serão somados.  Também se pode fazer busca por uma ou mais sigla(s), mas atenção: em diferentes legislaturas, pode haver mais de um partido usando a mesma sigla.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] sigla:
  ///   Sigla de um ou mais partido(s), separadas por vírgulas.
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
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `sigla`, `nome`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<Response> listarPartidosWithHttpInfo({ List<String>? sigla, List<String>? idLegislatura, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/partidos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (sigla != null) {
      queryParams.addAll(_queryParams('csv', 'sigla', sigla));
    }
    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
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

  /// Os partidos políticos que têm ou já tiveram parlamentares em exercício na Câmara
  ///
  /// Retorna uma lista de dados básicos sobre os partidos políticos que têm ou já tiveram deputados na Câmara. Se não forem passados parâmetros, o serviço retorna os partidos que têm deputados em exercício no momento da requisição.  É possível obter uma lista de partidos representados na Câmara em um certo intervalo de datas ou de legislaturas. Se um intervalo e uma ou mais legislatura(s) não coincidentes forem passados, todos os intervalos de tempo serão somados.  Também se pode fazer busca por uma ou mais sigla(s), mas atenção: em diferentes legislaturas, pode haver mais de um partido usando a mesma sigla.
  ///
  /// Parameters:
  ///
  /// * [List<String>] sigla:
  ///   Sigla de um ou mais partido(s), separadas por vírgulas.
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
  ///   Nome do campo pelo qual a lista deve ser ordenada: `id`, `sigla`, `nome`, `dataInicio` ou `dataFim`
  ///
  /// * [String] accept:
  Future<ResultadoPartidos?> listarPartidos({ List<String>? sigla, List<String>? idLegislatura, String? dataInicio, String? dataFim, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await listarPartidosWithHttpInfo(sigla: sigla, idLegislatura: idLegislatura, dataInicio: dataInicio, dataFim: dataFim, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoPartidos',) as ResultadoPartidos;
    
    }
    return null;
  }

  /// Deputados que são ou foram líderes ou vice-líderes de um partido
  ///
  /// Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID do partido do qual se deseja os dados.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<Response> obterLideresWithHttpInfo(int id, { int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/partidos/{id}/lideres'
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

  /// Deputados que são ou foram líderes ou vice-líderes de um partido
  ///
  /// Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   ID do partido do qual se deseja os dados.
  ///
  /// * [int] pagina:
  ///   Número da página de resultados, a partir de 1, que se deseja obter com a requisição, contendo o número de itens definido pelo parâmetro itens. Se omitido, assume o valor 1.
  ///
  /// * [int] itens:
  ///   Número máximo de itens na página que se deseja obter com esta requisição.
  ///
  /// * [String] accept:
  Future<ResultadoPartidosIDLideresVice?> obterLideres(int id, { int? pagina, int? itens, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterLideresWithHttpInfo(id, pagina: pagina, itens: itens, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoPartidosIDLideresVice',) as ResultadoPartidosIDLideresVice;
    
    }
    return null;
  }
}
