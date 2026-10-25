//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class BlocosApi {
  BlocosApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Lista de dados sobre os blocos partidários
  ///
  /// Nas atividades parlamentares, partidos podem se juntar em __blocos partidários__. Quando associados, os partidos passam a trabalhar como se fossem um \"partidão\", com um só líder e um mesmo conjunto de vice-líderes.  Os blocos só podem existir até o fim da legislatura em que foram criados: na legislatura seguinte, os mesmos partidos, se associados, formam um novo bloco.  Este recurso é uma lista dos blocos em atividade no momento da requisição. Se forem passados números de legislaturas com o parâmetro _idLegislatura_, são listados também os blocos formados e extintos nessas legislaturas.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de um ou mais bloco(s), separados por vírgulas.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) identificador(es) de uma ou mais legislatura(s), separados por vírgulas. Se presente, faz com que sejam retornados todos os blocos que existiram nessa(s) legislatura(s).
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
  ///   Nome do campo pelo qual a lista será ordenada: `idLegislatura`, `id` ou `nome`.
  ///
  /// * [String] accept:
  Future<Response> getBlocosWithHttpInfo({ List<String>? id, List<String>? idLegislatura, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blocos';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (id != null) {
      queryParams.addAll(_queryParams('csv', 'id', id));
    }
    if (idLegislatura != null) {
      queryParams.addAll(_queryParams('csv', 'idLegislatura', idLegislatura));
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

  /// Lista de dados sobre os blocos partidários
  ///
  /// Nas atividades parlamentares, partidos podem se juntar em __blocos partidários__. Quando associados, os partidos passam a trabalhar como se fossem um \"partidão\", com um só líder e um mesmo conjunto de vice-líderes.  Os blocos só podem existir até o fim da legislatura em que foram criados: na legislatura seguinte, os mesmos partidos, se associados, formam um novo bloco.  Este recurso é uma lista dos blocos em atividade no momento da requisição. Se forem passados números de legislaturas com o parâmetro _idLegislatura_, são listados também os blocos formados e extintos nessas legislaturas.
  ///
  /// Parameters:
  ///
  /// * [List<String>] id:
  ///   Número(s) identificador(es) de um ou mais bloco(s), separados por vírgulas.
  ///
  /// * [List<String>] idLegislatura:
  ///   Número(s) identificador(es) de uma ou mais legislatura(s), separados por vírgulas. Se presente, faz com que sejam retornados todos os blocos que existiram nessa(s) legislatura(s).
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
  ///   Nome do campo pelo qual a lista será ordenada: `idLegislatura`, `id` ou `nome`.
  ///
  /// * [String] accept:
  Future<ResultadoBloco?> getBlocos({ List<String>? id, List<String>? idLegislatura, int? pagina, int? itens, String? ordem, String? ordenarPor, String? accept, Future<void>? abortTrigger, }) async {
    final response = await getBlocosWithHttpInfo(id: id, idLegislatura: idLegislatura, pagina: pagina, itens: itens, ordem: ordem, ordenarPor: ordenarPor, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoBloco',) as ResultadoBloco;
    
    }
    return null;
  }

  /// Informações sobre um bloco partidário específico
  ///
  /// Retorna informações sobre o bloco identificado por `{id}` além daquelas obtidas na listagem.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do bloco de partidos.
  ///
  /// * [String] accept:
  Future<Response> obterBlocoIDWithHttpInfo(int id, { String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blocos/{id}'
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

  /// Informações sobre um bloco partidário específico
  ///
  /// Retorna informações sobre o bloco identificado por `{id}` além daquelas obtidas na listagem.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do bloco de partidos.
  ///
  /// * [String] accept:
  Future<ResultadoBloco?> obterBlocoID(int id, { String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterBlocoIDWithHttpInfo(id, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoBloco',) as ResultadoBloco;
    
    }
    return null;
  }

  /// Lista de partidos do bloco.
  ///
  /// Lista em que cada item contém os identificadores básicos de cada partido integrante do bloco identificado por {id}.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do bloco de partidos.
  ///
  /// * [String] data:
  ///   Data e hora, em formato `AAAA-MM-DDTHH:mm`, na qual se deseja saber os partidos que faziam parte do bloco `{id}`. Se omitida, é retornada a composição no momento da requisição.
  ///
  /// * [String] accept:
  Future<Response> obterBlocoIDPartidosWithHttpInfo(int id, { String? data, String? accept, Future<void>? abortTrigger, }) async {
    // ignore: prefer_const_declarations
    final path = r'/blocos/{id}/partidos'
      .replaceAll('{id}', id.toString());

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (data != null) {
      queryParams.addAll(_queryParams('', 'data', data));
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

  /// Lista de partidos do bloco.
  ///
  /// Lista em que cada item contém os identificadores básicos de cada partido integrante do bloco identificado por {id}.
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   Número identificador do bloco de partidos.
  ///
  /// * [String] data:
  ///   Data e hora, em formato `AAAA-MM-DDTHH:mm`, na qual se deseja saber os partidos que faziam parte do bloco `{id}`. Se omitida, é retornada a composição no momento da requisição.
  ///
  /// * [String] accept:
  Future<ResultadoBloco?> obterBlocoIDPartidos(int id, { String? data, String? accept, Future<void>? abortTrigger, }) async {
    final response = await obterBlocoIDPartidosWithHttpInfo(id, data: data, accept: accept, abortTrigger: abortTrigger,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ResultadoBloco',) as ResultadoBloco;
    
    }
    return null;
  }
}
